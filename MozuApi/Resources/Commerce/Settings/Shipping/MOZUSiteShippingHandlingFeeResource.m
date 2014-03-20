
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUSiteShippingHandlingFeeClient.h"
#import "MOZUSiteShippingHandlingFeeResource.h"



@interface MOZUSiteShippingHandlingFeeResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUSiteShippingHandlingFeeResource


- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext {
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

/**
Retrieves the details of the order handling fee configured for the site.
*/

- (void)orderHandlingFeeWithUserClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUSiteShippingHandlingFee *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUSiteShippingHandlingFeeClient clientForGetOrderHandlingFeeOperationWithUserClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
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

/**
Creates a new order handling fee for the site.
@param body Properties of the order handling fee to assess for order shipment.
*/

- (void)createOrderHandlingFeeWithBody:(MOZUSiteShippingHandlingFee *)body userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUSiteShippingHandlingFee *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUSiteShippingHandlingFeeClient clientForCreateOrderHandlingFeeOperationWithBody:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the order handling fee amount for the site.
@param body The combined price for all items in the order, including all selected options but excluding any discounts.
*/

- (void)updateOrderHandlingFeeWithBody:(MOZUSiteShippingHandlingFee *)body userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUSiteShippingHandlingFee *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUSiteShippingHandlingFeeClient clientForUpdateOrderHandlingFeeOperationWithBody:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
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