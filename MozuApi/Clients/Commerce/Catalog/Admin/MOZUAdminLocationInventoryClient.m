
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminLocationInventoryClient.h"
#import "MOZUAdminLocationInventoryURLComponents.h"
#import "MozuAdminLocationInventory.h"
#import "MozuAdminLocationInventoryCollection.h"


@implementation MOZUAdminLocationInventoryClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetLocationInventoryOperationWithLocationCode:(NSString *)locationCode productCode:(NSString *)productCode responseFields:(NSString *)responseFields {
	id url = [MOZUAdminLocationInventoryURLComponents URLComponentsForGetLocationInventoryOperationWithLocationCode:locationCode productCode:productCode responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminLocationInventory alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetLocationInventoriesOperationWithLocationCode:(NSString *)locationCode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields {
	id url = [MOZUAdminLocationInventoryURLComponents URLComponentsForGetLocationInventoriesOperationWithLocationCode:locationCode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminLocationInventoryCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForAddLocationInventoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUAdminLocationInventory> *)body locationCode:(NSString *)locationCode performUpserts:(NSNumber *)performUpserts {
	id url = [MOZUAdminLocationInventoryURLComponents URLComponentsForAddLocationInventoryOperationWithLocationCode:locationCode performUpserts:performUpserts];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray *jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUAdminLocationInventory arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdateLocationInventoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZULocationInventoryAdjustment> *)body locationCode:(NSString *)locationCode {
	id url = [MOZUAdminLocationInventoryURLComponents URLComponentsForUpdateLocationInventoryOperationWithLocationCode:locationCode];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray *jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUAdminLocationInventory arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeleteLocationInventoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode locationCode:(NSString *)locationCode productCode:(NSString *)productCode {
	id url = [MOZUAdminLocationInventoryURLComponents URLComponentsForDeleteLocationInventoryOperationWithLocationCode:locationCode productCode:productCode];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	return client;
}



@end