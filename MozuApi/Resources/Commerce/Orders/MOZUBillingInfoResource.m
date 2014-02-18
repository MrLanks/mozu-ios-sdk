
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUBillingInfoClient.h"
#import "MOZUBillingInfoResource.h"


@interface MOZUBillingInfoResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUBillingInfoResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

-(void)billingInfoWithOrderId:(NSString*)orderId draft:(NSNumber*)draft userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUBillingInfo* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUBillingInfoClient clientForGetBillingInfoOperationWithOrderId:orderId draft:draft userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

-(void)setBillingInfoWithBillingInfo:(MOZUbillingInfo*)billingInfo orderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUBillingInfo* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUBillingInfoClient clientForSetBillingInfoOperationWithBillingInfo:billingInfo orderId:orderId updateMode:updateMode version:version userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end