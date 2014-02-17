
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductClient.h"
#import "MOZUProductUrl.h"
#import "MozuProductInCatalogInfo.h"
#import "MozuAdminProduct.h"
#import "MozuAdminProductCollection.h"


@implementation MOZUProductClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetProductsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter q:(NSString*)q qLimit:(NSNumber*)qLimit noCount:(NSNumber*)noCount userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductURL URLForGetProductsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter q:q qLimit:qLimit noCount:noCount];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminProductCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetProductOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductURL URLForGetProductOperationWithProductCode:productCode];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminProduct alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetProductInCatalogsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductURL URLForGetProductInCatalogsOperationWithProductCode:productCode];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [[NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUProductInCatalogInfo arrayOfModelFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetProductInCatalogOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode catalogId:(NSInteger)catalogId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductURL URLForGetProductInCatalogOperationWithProductCode:productCode catalogId:catalogId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductInCatalogInfo alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddProductOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode product:(MOZUAdminProduct*)product userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductURL URLForAddProductOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminProduct alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForAddProductInCatalogOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productInCatalogInfoIn:(MOZUProductInCatalogInfo*)productInCatalogInfoIn productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductURL URLForAddProductInCatalogOperationWithProductCode:productCode];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductInCatalogInfo alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateProductOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode product:(MOZUAdminProduct*)product productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductURL URLForUpdateProductOperationWithProductCode:productCode];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminProduct alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForUpdateProductInCatalogsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productInCatalogsIn:(NSArray<MOZUProductInCatalogInfo>*)productInCatalogsIn productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductURL URLForUpdateProductInCatalogsOperationWithProductCode:productCode];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [[NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUProductInCatalogInfo arrayOfModelFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+(MOZUClient*)clientForUpdateProductInCatalogOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productInCatalogInfoIn:(MOZUProductInCatalogInfo*)productInCatalogInfoIn productCode:(NSString*)productCode catalogId:(NSInteger)catalogId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductURL URLForUpdateProductInCatalogOperationWithProductCode:productCode catalogId:catalogId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductInCatalogInfo alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteProductOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductURL URLForDeleteProductOperationWithProductCode:productCode];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}

+(MOZUClient*)clientForDeleteProductInCatalogOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString*)productCode catalogId:(NSInteger)catalogId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductURL URLForDeleteProductInCatalogOperationWithProductCode:productCode catalogId:catalogId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end