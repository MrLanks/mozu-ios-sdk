//
//  MozuClient.m
//  Api
//
//  Created by Sanjay Mandadi on 10/15/13.
//  Copyright (c) 2013 Mozu. All rights reserved.
//

#import "MOZUAppAuthenticator.h"
#import "MOZUClient.h"
#import "MOZUHeaders.h"
#import "MOZUResponseHelper.h"
#import "MOZUUserAuthenticator.h"
#import "MOZUTenantResource.h"
#import "MOZUAPIVersion.h"
#import "MOZUAPILogger.h"

@interface MOZUClient()

@property(nonatomic, strong) NSString* JSONResult;
@property(nonatomic, strong) id result; // Is this needed?
@property(nonatomic, assign) NSInteger statusCode;
@property(nonatomic, strong) MOZUApiError* error;

@property (nonatomic, strong) NSMutableDictionary *mutableHeaders;
@property (nonatomic, strong) MOZUAPIContext * APIContext;
@property (nonatomic, strong) NSString *host;
@property (nonatomic, strong) MOZUURLComponents *resourceURLComponents;
@property (nonatomic, strong) NSString * verb;
@property (nonatomic, strong) NSString *bodyString;

@end

static NSString * const MOZUAPIClientErrorDomain = @"MOZUAPIClientErrorDomain";

@implementation MOZUClient

-(instancetype)init
{
    if (self = [super init])
    {
        _mutableHeaders = [NSMutableDictionary new];
    }
    
    return self;
}

- (instancetype)initWithResourceURLComponents:(MOZUURLComponents *)resourceURLComponents
                                         verb:(NSString *)verb;
{
    if (self = [self init]) {
        NSAssert(verb, @"MOZUClient verb is missing!");
        NSAssert(resourceURLComponents, @"MOZUClient resourceURLComponents is missing!");
        _resourceURLComponents = resourceURLComponents;
        _verb = [verb lowercaseString];
    }
    
    return self;
}

- (void)setAPIContext:(MOZUAPIContext *)APIContext
{    
    _APIContext = APIContext;
    
    if (APIContext.tenantId > 0) {
        [self setHeader:MOZU_X_VOL_TENANT value:[@(APIContext.tenantId) description]];
    }
    
    if (APIContext.siteId != nil && [APIContext.siteId intValue] > 0) {
        [self setHeader:MOZU_X_VOL_SITE value:[APIContext.siteId stringValue]];
    }
    
    if (APIContext.masterCatalogId != nil && [APIContext.masterCatalogId intValue] > 0) {
        [self setHeader:MOZU_X_VOL_MASTER_CATALOG value:[APIContext.masterCatalogId stringValue]];
    }
    
    if (APIContext.catalogId != nil && [APIContext.catalogId intValue] > 0)
    {
        [self setHeader:MOZU_X_VOL_CATALOG value:[APIContext.catalogId stringValue]];
    }
}

- (void)validateUserClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void (^)(NSError *error))completion
{
    NSAssert(userClaims, @"User Claims is nil");
    
    if (userClaims.scope == MOZUShopperAuthenticationScope) {
        // Logic missing from C#
    }
    
    [MOZUUserAuthenticator ensureUserAuthTicket:userClaims completionHandler:^(MOZUAuthenticationProfile *profile, NSHTTPURLResponse *response, MOZUApiError *error) {
        if (profile) {
            userClaims.accessToken = profile.authTicket.accessToken;
            userClaims.accessTokenExpiration = profile.authTicket.accessTokenExpiration;
            [self setHeader:MOZU_X_VOL_USER_CLAIMS value:userClaims.accessToken];
            completion(nil);
        } else {
            DDLogError(@"%@", error);
            completion(error);
        }
    }];
    
}

- (void)setHeader:(NSString *)header value:(NSString *)value
{
    NSAssert(header, @"Header cannot be nil.");
    NSAssert(value, @"Header value cannot be nil.");
    
    self.mutableHeaders[header] = value;
}

- (NSDictionary *)headers
{
    return [self.mutableHeaders copy];
}

- (void)setBody:(JSONModel *)body
{
    _body = body;
    self.bodyString = [body toJSONString];
}

- (void)setBodyStream:(NSInputStream *)bodyStream
{
    self.bodyStream = bodyStream;
}

- (void)validateContext:(MOZUAPIContext *)APIContext completionHandler:(void (^)(NSString *host, NSError *error))completion
{
    if (self.resourceURLComponents.location == MOZUTenantPod) {
        NSAssert(APIContext, @"MOZUClient APIContext is missing.");
        NSAssert(APIContext.tenantId >=0, @"APIContext.tenantId less than 0.");
        
        if (APIContext.tenantHost.length == 0) {
            id tenantRes = [[MOZUTenantResource alloc] init];
            [tenantRes tenantWithTenantId:APIContext.tenantId userClaims:nil completionHandler:^void(MOZUTenant* result, MOZUApiError* error, NSHTTPURLResponse* response) {
                if (result) {
                    completion(result.domain, nil);
                } else {
                    DDLogError(@"%@", error.localizedDescription);
                    completion(nil, error);
                }
            }];
        } else {
            completion(APIContext.tenantHost, nil);
        }
    } else {
        NSString *host = [MOZUAppAuthenticator sharedAppAuthenticator].host;
        if (!host || [host isEqualToString:@""]) {
            NSError *error = [NSError errorWithDomain:MOZUAPIClientErrorDomain code:MOZUClientErrorMissingHost userInfo:@{NSLocalizedDescriptionKey: @"MOZUAppAuthenticator host is missing"}];
            DDLogError(@"%@", error.localizedDescription);
            completion(nil, error);
        } else {
            completion(host, nil);
        }
    }
}

- (void)validateHeaders:(NSMutableDictionary *)headers request:(NSMutableURLRequest *)request completionHandler:(void (^)(NSError *error))completion
{
    // Add MOZU_X_VOL_VERSION
    [self setHeader:MOZU_X_VOL_VERSION value:[MOZUAPIVersion version]];

    // MOZU_X_VOL_CORRELATION
    if (self.APIContext.correlationId && ![self.APIContext.correlationId isEqualToString:@""]) {
        [self setHeader:MOZU_X_VOL_CORRELATION value:self.APIContext.correlationId];
    } else {
        DDLogInfo(@"CorrelationId not set on API Context.");
    }
    
    if (![[headers allKeys] containsObject:MOZU_X_VOL_APP_CLAIMS]) {
        // Add MOZU_X_VOL_APP_CLAIMS to headers
        if (!self.APIContext || !self.APIContext.appAuthClaim || [self.APIContext.appAuthClaim isEqualToString:@""]) {
            [[MOZUAppAuthenticator sharedAppAuthenticator] addAuthHeaderToRequest:request completionHandler:^(NSHTTPURLResponse *response, MOZUApiError *error) {
                if (error) {
                    DDLogError(@"%@", error.localizedDescription);
                    completion(error);
                } else {
                    completion(nil);
                }
            }];
        } else {
            [self setHeader:MOZU_X_VOL_APP_CLAIMS value:self.APIContext.appAuthClaim];
            completion(nil);
        }
    } else {
        completion(nil);
    }
}

-(void)executeWithCompletionHandler:(MOZUClientCompletionBlock)completionHandler
{
    __block NSMutableURLRequest *request = nil;
    
    // Create dispatch group that waits for three validations before submitting client request.
    dispatch_group_t group = dispatch_group_create();
    dispatch_group_enter(group);
    [self validateContext:self.APIContext completionHandler:^(NSString *host, NSError *error) {
        if (error) {
            DDLogError(@"%@", error.localizedDescription);
            dispatch_group_leave(group);
        } else {
            self.resourceURLComponents.host = host;
            request = [NSMutableURLRequest requestWithURL:self.resourceURLComponents.URL];
            [self validateHeaders:self.mutableHeaders request:request completionHandler:^(NSError *error) {
                if (error) {
                    DDLogError(@"%@", error.localizedDescription);
                }
                dispatch_group_leave(group);
            }];
        }
    }];
    
#warning Enable user claims when logic is implemented.
//    dispatch_group_enter(group);
//    [self validateUserClaims:self.userClaims completionHandler:^{
//        dispatch_group_leave(group);
//    }];
    
    
    // Wait until all dispatch groups leave.
    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
    
    [self.mutableHeaders addEntriesFromDictionary:request.allHTTPHeaderFields];
    [request setAllHTTPHeaderFields:[self.mutableHeaders copy]];
    [request setValue:@"application/json" forHTTPHeaderField:@"content-type"];
    [request setHTTPMethod:self.verb];
    
    if (![self.verb isEqualToString:@"GET"]) {
        NSData* body = [self.bodyString dataUsingEncoding:NSUTF8StringEncoding];
        [request setHTTPBody:body];
    }
    
    //NSLog(@"%@",url);
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration ephemeralSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                                completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                    if (error) {
                                                        DDLogError(@"%@", error.localizedDescription);
                                                        completionHandler(nil, (MOZUApiError *)error, nil);
                                                    } else {
                                                        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse*)response;
                                                        self.statusCode = [httpResponse statusCode];
                                                        self.JSONResult = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                                                        self.error = [MOZUResponseHelper ensureSuccessOfResponse:httpResponse JSONResult:self.JSONResult];
                                                        
                                                        if (self.JSONResult) {
                                                            self.result = self.JSONParser(self.JSONResult);
                                                        }
                                                        
                                                        completionHandler(self.result, self.error, httpResponse);
                                                    }
                                                }];
    [dataTask resume];
    
}


@end
