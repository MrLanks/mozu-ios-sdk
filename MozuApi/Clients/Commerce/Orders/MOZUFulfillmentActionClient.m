
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUFulfillmentActionClient.h"
#import "MOZUFulfillmentActionUrl.h"
#import "MozuFulfillmentInfo.h"
#import "MozuOrder.h"


@implementation MOZUFulfillmentActionClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetFulfillmentInfoOperationWithWithOrderId:(NSString*)orderId draft:(NSNumber*)draft userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUFulfillmentActionURL URLForGetFulfillmentInfoOperationWithOrderId:orderId draft:draft];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFulfillmentInfo alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForPerformFulfillmentActionOperationWithWithaction:((MOZUFulfillmentAction*))action orderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUFulfillmentActionURL URLForPerformFulfillmentActionOperationWithOrderId:orderId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForSetFulFillmentInfoOperationWithWithfulfillmentInfo:((MOZUFulfillmentInfo*))fulfillmentInfo orderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUFulfillmentActionURL URLForSetFulFillmentInfoOperationWithOrderId:orderId updateMode:updateMode version:version];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFulfillmentInfo alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end