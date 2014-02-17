
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/NSJSONSerialization.h>
#import "MOZUDiscountClient.h"
#import "MOZUDiscountUrl.h"
#import "MozuAdminDiscount.h"
#import "MozuDiscountLocalizedContent.h"
#import "MozuDiscountCollection.h"
#import "MozuRedemption.h"


@implementation MOZUDiscountClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetDiscountsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDiscountURL URLForGetDiscountsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDiscountCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDiscountURL URLForGetDiscountOperationWithDiscountId:discountId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminDiscount alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetDiscountContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDiscountURL URLForGetDiscountContentOperationWithDiscountId:discountId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDiscountLocalizedContent alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGenerateRandomCouponOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDiscountURL URLForGenerateRandomCouponOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreateDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discount:(MOZUAdminDiscount*)discount userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDiscountURL URLForCreateDiscountOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminDiscount alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForRedeemDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode redemption:(MOZURedemption*)redemption userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDiscountURL URLForRedeemDiscountOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZURedemption alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discount:(MOZUAdminDiscount*)discount discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDiscountURL URLForUpdateDiscountOperationWithDiscountId:discountId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminDiscount alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForUpdateDiscountContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode content:(MOZUDiscountLocalizedContent*)content discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDiscountURL URLForUpdateDiscountContentOperationWithDiscountId:discountId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDiscountLocalizedContent alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDiscountURL URLForDeleteDiscountOperationWithDiscountId:discountId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}

+(MOZUClient*)clientForUnRedeemDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSNumber*)discountId orderNumber:(NSNumber*)orderNumber userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUDiscountURL URLForUnRedeemDiscountOperationWithDiscountId:discountId orderNumber:orderNumber];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end