
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUSiteShippingHandlingFeeClient.h"
#import "MOZUSiteShippingHandlingFeeURLComponents.h"
#import "MozuSiteShippingHandlingFee.h"


@implementation MOZUSiteShippingHandlingFeeClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetOrderHandlingFeeOperationWithUserClaims:(MOZUUserAuthTicket *)userClaims {
	id url = [MOZUSiteShippingHandlingFeeURLComponents URLComponentsForGetOrderHandlingFeeOperation];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUSiteShippingHandlingFee alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForCreateOrderHandlingFeeOperationWithBody:(MOZUSiteShippingHandlingFee *)body userClaims:(MOZUUserAuthTicket *)userClaims {
	id url = [MOZUSiteShippingHandlingFeeURLComponents URLComponentsForCreateOrderHandlingFeeOperation];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUSiteShippingHandlingFee alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdateOrderHandlingFeeOperationWithBody:(MOZUSiteShippingHandlingFee *)body userClaims:(MOZUUserAuthTicket *)userClaims {
	id url = [MOZUSiteShippingHandlingFeeURLComponents URLComponentsForUpdateOrderHandlingFeeOperation];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUSiteShippingHandlingFee alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end