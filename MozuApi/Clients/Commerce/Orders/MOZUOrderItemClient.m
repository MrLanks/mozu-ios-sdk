
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUOrderItemClient.h"
#import "MOZUOrderItemURLComponents.h"
#import "MozuOrder.h"
#import "MozuCommerceOrderItem.h"
#import "MozuOrderItemCollection.h"


@implementation MOZUOrderItemClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetOrderItemViaLineIdOperationWithOrderId:(NSString *)orderId lineId:(NSInteger)lineId draft:(NSNumber *)draft responseFields:(NSString *)responseFields {
	id url = [MOZUOrderItemURLComponents URLComponentsForGetOrderItemViaLineIdOperationWithOrderId:orderId lineId:lineId draft:draft responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCommerceOrderItem alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetOrderItemOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId draft:(NSNumber *)draft responseFields:(NSString *)responseFields {
	id url = [MOZUOrderItemURLComponents URLComponentsForGetOrderItemOperationWithOrderId:orderId orderItemId:orderItemId draft:draft responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCommerceOrderItem alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetOrderItemsOperationWithOrderId:(NSString *)orderId draft:(NSNumber *)draft responseFields:(NSString *)responseFields {
	id url = [MOZUOrderItemURLComponents URLComponentsForGetOrderItemsOperationWithOrderId:orderId draft:draft responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


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

+ (MOZUClient *)clientForCreateOrderItemOperationWithBody:(MOZUCommerceOrderItem *)body orderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version skipInventoryCheck:(NSNumber *)skipInventoryCheck responseFields:(NSString *)responseFields {
	id url = [MOZUOrderItemURLComponents URLComponentsForCreateOrderItemOperationWithOrderId:orderId updateMode:updateMode version:version skipInventoryCheck:skipInventoryCheck responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

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

+ (MOZUClient *)clientForUpdateOrderItemDiscountOperationWithBody:(MOZUAppliedDiscount *)body orderId:(NSString *)orderId orderItemId:(NSString *)orderItemId discountId:(NSInteger)discountId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields {
	id url = [MOZUOrderItemURLComponents URLComponentsForUpdateOrderItemDiscountOperationWithOrderId:orderId orderItemId:orderItemId discountId:discountId updateMode:updateMode version:version responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForUpdateItemDutyOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId dutyAmount:(NSNumber *)dutyAmount updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields {
	id url = [MOZUOrderItemURLComponents URLComponentsForUpdateItemDutyOperationWithOrderId:orderId orderItemId:orderItemId dutyAmount:dutyAmount updateMode:updateMode version:version responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForUpdateItemFulfillmentOperationWithBody:(MOZUCommerceOrderItem *)body orderId:(NSString *)orderId orderItemId:(NSString *)orderItemId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields {
	id url = [MOZUOrderItemURLComponents URLComponentsForUpdateItemFulfillmentOperationWithOrderId:orderId orderItemId:orderItemId updateMode:updateMode version:version responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForUpdateItemProductPriceOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId price:(NSNumber *)price updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields {
	id url = [MOZUOrderItemURLComponents URLComponentsForUpdateItemProductPriceOperationWithOrderId:orderId orderItemId:orderItemId price:price updateMode:updateMode version:version responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForUpdateItemQuantityOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId quantity:(NSInteger)quantity updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields {
	id url = [MOZUOrderItemURLComponents URLComponentsForUpdateItemQuantityOperationWithOrderId:orderId orderItemId:orderItemId quantity:quantity updateMode:updateMode version:version responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


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

+ (MOZUClient *)clientForDeleteOrderItemOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId updateMode:(NSString *)updateMode version:(NSString *)version {
	id url = [MOZUOrderItemURLComponents URLComponentsForDeleteOrderItemOperationWithOrderId:orderId orderItemId:orderItemId updateMode:updateMode version:version];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrder alloc] initWithString:jsonResult error:nil];
	};

	return client;
}



@end