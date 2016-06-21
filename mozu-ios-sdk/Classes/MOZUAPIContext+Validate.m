//
//  MOZUAPIContext+Auth.m
//  Pods
//
//  Created by Rabin Joshi on 6/9/16.
//
//

#import "MOZUAPIContext+Validate.h"

#import "MOZUAPIError.h"

#import "MOZUAuthTicketResource.h"
#import "MOZUAppAuthInfo.h"
#import "MOZUAuthTicket.h"

#import "MOZUTenantAdminUserAuthTicketResource.h"
#import "MOZUUserAuthInfo.h"
#import "MOZUTenantAdminUserAuthTicket.h"

#import "MOZUDeveloperAdminUserAuthTicketResource.h"
#import "MOZUDeveloperAdminUserAuthTicket.h"

#import "MOZUCustomerAuthTicketResource.h"
#import "MOZUCustomerAuthTicket.h"



@implementation MOZUAPIContext (Validate)

- (void)validateWithCompletion: (void(^)(MOZUAPIError *error))handler {
    
    [self ensureAppAuthTicketWithCompletionHandler:^(MOZUAPIError *error) {
        
        if (error != nil) {
            handler(error);
            return;
        }
        
        if (self.tenantAdminUserAuthTicket != nil) {
            
            [self ensureTenantAdminUserAuthTicketWithCompletionHandler:^(MOZUAPIError *error) {
                if (error != nil) {
                    handler(error);
                    return;
                }
                handler(nil);
            }];
        }
        else if (self.developerAdminUserAuthTicket != nil) {
            
            [self ensureDeveloperAdminUserAuthTicketWithCompletionHandler:^(MOZUAPIError *error) {
                if (error != nil) {
                    handler(error);
                    return;
                }
                handler(nil);
            }];
        }
        else if (self.developerAdminUserAuthTicket != nil) {
            
            [self ensureDeveloperAdminUserAuthTicketWithCompletionHandler:^(MOZUAPIError *error) {
                if (error != nil) {
                    handler(error);
                    return;
                }
                handler(nil);
            }];
        }
        else {
            handler(nil);
        }
        
        
    }];
    
}

#pragma mark: - App Auth

- (void)ensureAppAuthTicketWithCompletionHandler: (void(^)(MOZUAPIError *error))handler {
    
    // No appAuthTicket or refresh token expiration date is in the past.
    if (!self.appAuthTicket || ([self.appAuthTicket.refreshTokenExpiration timeIntervalSinceNow] < 0)) {
        [self authenticateAppWithCompletionHandler:handler];
        return;
    }
    
    // AppAuthTicket token expiration date is in the past.
    if ([self.appAuthTicket.accessTokenExpiration timeIntervalSinceNow] < 0) {
        [self refreshAppWithCompletionHandler:handler];
        return;
    }
    
    // AppAuthTicket exists & valid
    handler(nil);
}

- (void)authenticateAppWithCompletionHandler: (void(^)(MOZUAPIError *error))handler {
    
    NSAssert(self.appAuthInfo, @"appAuthInfo is nil");
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    MOZUAuthTicketResource *res = [[MOZUAuthTicketResource alloc] init];
    [res authenticateAppWithBody:self.appAuthInfo
                  responseFields:nil
               completionHandler:^(MOZUAuthTicket *result, MOZUAPIError *error, NSHTTPURLResponse *response) {
                   
                   if (error != nil) {
                       handler(error);
                       return;
                   }
                   
                   self.appAuthTicket = result;
                   handler(nil);
                   
               }];
}

- (void)refreshAppWithCompletionHandler: (void(^)(MOZUAPIError *error))handler {
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    MOZUAuthTicketResource *res = [[MOZUAuthTicketResource alloc] init];
    [res refreshAppAuthTicketWithBody:self.appAuthTicket
                       responseFields:nil
                    completionHandler:^(MOZUAuthTicket *result, MOZUAPIError *error, NSHTTPURLResponse *response) {
                      
                        if (error != nil) {
                            handler(error);
                            return;
                        }
                        
                        self.appAuthTicket = result;
                        handler(nil);
                        
                    }];
    
}

#pragma mark: - Tenant User Auth

- (void)ensureTenantAdminUserAuthTicketWithCompletionHandler: (void(^)(MOZUAPIError *error))handler {
    
    // tenant user auth ticket doesn't exist
    if (self.tenantAdminUserAuthTicket == nil) {
        return;
    }
    
    // AppAuthTicket token expiration date is in the past.
    if ([self.tenantAdminUserAuthTicket.accessTokenExpiration timeIntervalSinceNow] < 0) {
        [self refreshTenantAdminUserWithCompletionHandler:handler];
        return;
    }
    
    handler(nil);
    
}

- (void)refreshTenantAdminUserWithCompletionHandler: (void(^)(MOZUAPIError *error))handler {
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    MOZUTenantAdminUserAuthTicket *body = [[MOZUTenantAdminUserAuthTicket alloc] init];
    body.refreshToken = self.tenantAdminUserAuthTicket.refreshToken;
    
    
    MOZUTenantAdminUserAuthTicketResource *res = [[MOZUTenantAdminUserAuthTicketResource alloc] init];
    res.apiContext = self;
    res.apiContext.tenantAdminUserAuthTicket = nil;
    [res refreshAuthTicketWithBody:body
                          tenantId:nil
                    responseFields:nil
                 completionHandler:^(MOZUTenantAdminUserAuthTicket *result, MOZUAPIError *error, NSHTTPURLResponse *response) {
                     
                     if (error != nil) {
                         handler(error);
                         return;
                     }
                     
                     self.tenantAdminUserAuthTicket = result;
                     handler(nil);
                 }];
}

#pragma mark: - Developer User Auth

- (void)ensureDeveloperAdminUserAuthTicketWithCompletionHandler: (void(^)(MOZUAPIError *error))handler {
    
    // tenant user auth ticket doesn't exist
    if (self.developerAdminUserAuthTicket == nil) {
        return;
    }
    
    // AppAuthTicket token expiration date is in the past.
    if ([self.developerAdminUserAuthTicket.accessTokenExpiration timeIntervalSinceNow] < 0) {
        [self refreshDeveloperAdminUserWithCompletionHandler:handler];
        return;
    }
    
    handler(nil);
    
}

- (void)refreshDeveloperAdminUserWithCompletionHandler: (void(^)(MOZUAPIError *error))handler {
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    MOZUDeveloperAdminUserAuthTicketResource *res = [[MOZUDeveloperAdminUserAuthTicketResource alloc] init];
    [res refreshDeveloperAuthTicketWithBody:self.developerAdminUserAuthTicket
                         developerAccountId:@(self.developerAdminUserAuthTicket.account.id)
                             responseFields:nil
                          completionHandler:^(MOZUDeveloperAdminUserAuthTicket *result, MOZUAPIError *error, NSHTTPURLResponse *response) {
                              
                              if (error != nil) {
                                  handler(error);
                                  return;
                              }
                              
                              self.developerAdminUserAuthTicket = result;
                              handler(nil);
                          }];
}

#pragma mark: - Customer Auth

- (void)ensureCustomerAuthTicketWithCompletionHandler: (void(^)(MOZUAPIError *error))handler {
    
    // customer auth ticket doesn't exist
    if (self.customerAuthTicket == nil) {
        return;
    }
    
    // CustomerAuthTicket token expiration date is in the past.
    if ([self.customerAuthTicket.accessTokenExpiration timeIntervalSinceNow] < 0) {
        [self refreshDeveloperAdminUserWithCompletionHandler:handler];
        return;
    }
    
    handler(nil);
    
}

- (void)refreshCustomerWithCompletionHandler: (void(^)(MOZUAPIError *error))handler {
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    MOZUCustomerAuthTicketResource *res = [[MOZUCustomerAuthTicketResource alloc] init];
    [res refreshUserAuthTicketWithRefreshToken:self.customerAuthTicket
                                responseFields:nil
                             completionHandler:^(MOZUCustomerAuthTicket *result, MOZUAPIError *error, NSHTTPURLResponse *response) {
                                 
                                 if (error != nil) {
                                     handler(error);
                                     return;
                                 }
                                 
                                 self.customerAuthTicket = result;
                                 handler(nil);
                             }];
}


@end