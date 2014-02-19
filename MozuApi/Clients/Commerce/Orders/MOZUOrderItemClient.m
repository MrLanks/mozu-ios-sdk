
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUOrderItemClient.h"
#import "MOZUOrderItemUrl.h"
#import "MozuOrder.h"
#import "MozuOrderItem.h"
#import "MozuOrderItemCollection.h"


@implementation MOZUOrderItemClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetOrderItemOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId draft:(NSNumber*)draft userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderItemURL URLForGetOrderItemOperationWithOrderId:orderId orderItemId:orderItemId draft:draft];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrderItem alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetOrderItemsOperationWithOrderId:(NSString*)orderId draft:(NSNumber*)draft userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderItemURL URLForGetOrderItemsOperationWithOrderId:orderId draft:draft];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrderItemCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreateOrderItemOperationWithBody:(MOZUOrderItem*)body orderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version skipInventoryCheck:(NSNumber*)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderItemURL URLForCreateOrderItemOperationWithOrderId:orderId updateMode:updateMode version:version skipInventoryCheck:skipInventoryCheck];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateOrderItemDiscountOperationWithBody:(MOZUAppliedDiscount*)body orderId:(NSString*)orderId orderItemId:(NSString*)orderItemId discountId:(NSInteger)discountId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderItemURL URLForUpdateOrderItemDiscountOperationWithOrderId:orderId orderItemId:orderItemId discountId:discountId updateMode:updateMode version:version];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForUpdateItemFulfillmentOperationWithBody:(MOZUOrderItem*)body orderId:(NSString*)orderId orderItemId:(NSString*)orderItemId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderItemURL URLForUpdateItemFulfillmentOperationWithOrderId:orderId orderItemId:orderItemId updateMode:updateMode version:version];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForUpdateItemProductPriceOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId price:(NSDecimalNumber*)price updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderItemURL URLForUpdateItemProductPriceOperationWithOrderId:orderId orderItemId:orderItemId price:price updateMode:updateMode version:version];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForUpdateItemQuantityOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId quantity:(NSInteger)quantity updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderItemURL URLForUpdateItemQuantityOperationWithOrderId:orderId orderItemId:orderItemId quantity:quantity updateMode:updateMode version:version];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteOrderItemOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderItemURL URLForDeleteOrderItemOperationWithOrderId:orderId orderItemId:orderItemId updateMode:updateMode version:version];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}



@end