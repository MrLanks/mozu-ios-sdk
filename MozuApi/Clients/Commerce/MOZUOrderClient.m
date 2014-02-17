
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/NSJSONSerialization.h>
#import "MOZUOrderClient.h"
#import "MOZUOrderUrl.h"
#import "MozuOrder.h"
#import "MozuOrderCollection.h"
#import "MozuPricingTaxableOrder.h"


@implementation MOZUOrderClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetOrdersOperationWithWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter q:(NSString*)q qLimit:(NSNumber*)qLimit userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderURL URLForGetOrdersOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter q:q qLimit:qLimit];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUOrderCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetAvailableActionsOperationWithWithOrderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderURL URLForGetAvailableActionsOperationWithOrderId:orderId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}

+(MOZUClient*)clientForGetTaxableOrdersOperationWithWithOrderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderURL URLForGetTaxableOrdersOperationWithOrderId:orderId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [[NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUPricingTaxableOrder arrayOfModelFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetOrderOperationWithWithOrderId:(NSString*)orderId draft:(NSNumber*)draft userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderURL URLForGetOrderOperationWithOrderId:orderId draft:draft];
	id verb = @"GET";
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
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreateOrderOperationWithWithOrder:(MOZUOrder*)order userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderURL URLForCreateOrderOperation];
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

+(MOZUClient*)clientForCreateOrderFromCartOperationWithWithCartId:(NSString*)cartId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderURL URLForCreateOrderFromCartOperationWithCartId:cartId];
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

+(MOZUClient*)clientForPerformOrderActionOperationWithWithAction:(MOZUOrderAction*)action orderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderURL URLForPerformOrderActionOperationWithOrderId:orderId];
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

+(MOZUClient*)clientForUpdateOrderDiscountOperationWithWithDiscount:(MOZUAppliedDiscount*)discount orderId:(NSString*)orderId discountId:(NSInteger)discountId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderURL URLForUpdateOrderDiscountOperationWithOrderId:orderId discountId:discountId updateMode:updateMode version:version];
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

+(MOZUClient*)clientForDeleteOrderDraftOperationWithWithOrderId:(NSString*)orderId version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderURL URLForDeleteOrderDraftOperationWithOrderId:orderId version:version];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}

+(MOZUClient*)clientForChangeOrderUserIdOperationWithWithOrderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderURL URLForChangeOrderUserIdOperationWithOrderId:orderId];
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

+(MOZUClient*)clientForUpdateOrderOperationWithWithOrder:(MOZUOrder*)order orderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUOrderURL URLForUpdateOrderOperationWithOrderId:orderId updateMode:updateMode version:version];
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



@end