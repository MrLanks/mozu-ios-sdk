
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPriceListEntryClient.h"
#import "MOZUPriceListEntryURLComponents.h"
#import "MozuPriceListEntry.h"
#import "MozuPriceListEntryCollection.h"


@implementation MOZUPriceListEntryClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetPriceListEntryOperationWithPriceListCode:(NSString *)priceListCode productCode:(NSString *)productCode currencyCode:(NSString *)currencyCode startDate:(NSDate *)startDate responseFields:(NSString *)responseFields {
	id url = [MOZUPriceListEntryURLComponents URLComponentsForGetPriceListEntryOperationWithPriceListCode:priceListCode productCode:productCode currencyCode:currencyCode startDate:startDate responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUPriceListEntry alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetPriceListEntriesOperationWithPriceListCode:(NSString *)priceListCode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields {
	id url = [MOZUPriceListEntryURLComponents URLComponentsForGetPriceListEntriesOperationWithPriceListCode:priceListCode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUPriceListEntryCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForAddPriceListEntryOperationWithBody:(MOZUPriceListEntry *)body priceListCode:(NSString *)priceListCode responseFields:(NSString *)responseFields {
	id url = [MOZUPriceListEntryURLComponents URLComponentsForAddPriceListEntryOperationWithPriceListCode:priceListCode responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUPriceListEntry alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdatePriceListEntryOperationWithBody:(MOZUPriceListEntry *)body priceListCode:(NSString *)priceListCode productCode:(NSString *)productCode currencyCode:(NSString *)currencyCode startDate:(NSDate *)startDate responseFields:(NSString *)responseFields {
	id url = [MOZUPriceListEntryURLComponents URLComponentsForUpdatePriceListEntryOperationWithPriceListCode:priceListCode productCode:productCode currencyCode:currencyCode startDate:startDate responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUPriceListEntry alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeletePriceListEntryOperationWithPriceListCode:(NSString *)priceListCode productCode:(NSString *)productCode currencyCode:(NSString *)currencyCode startDate:(NSDate *)startDate {
	id url = [MOZUPriceListEntryURLComponents URLComponentsForDeletePriceListEntryOperationWithPriceListCode:priceListCode productCode:productCode currencyCode:currencyCode startDate:startDate];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end