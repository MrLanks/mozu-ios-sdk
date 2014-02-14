/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZULocationInventoryURL.h"

@implementation MOZULocationInventoryURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetLocationInventoriesOperationWithProductCode:(NSString*)productCode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/catalog/admin/products/{ProductCode}/LocationInventory/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"startIndex" : @(startIndex),
		@"pageSize" : @(pageSize),
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetLocationInventoryOperationWithProductCode:(NSString*)productCode locationCode:(NSString*)locationCode {
	NSString* template = @"/api/commerce/catalog/admin/products/{ProductCode}/LocationInventory/{LocationCode}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"locationCode" : locationCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForAddLocationInventoryOperationWithProductCode:(NSString*)productCode {
	NSString* template = @"/api/commerce/catalog/admin/products/{ProductCode}/LocationInventory";
	NSDictionary* params = @{
		@"productCode" : productCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateLocationInventoryOperationWithProductCode:(NSString*)productCode {
	NSString* template = @"/api/commerce/catalog/admin/products/{ProductCode}/LocationInventory";
	NSDictionary* params = @{
		@"productCode" : productCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteLocationInventoryOperationWithProductCode:(NSString*)productCode locationCode:(NSString*)locationCode {
	NSString* template = @"/api/commerce/catalog/admin/products/{ProductCode}/LocationInventory/{LocationCode}";
	NSDictionary* params = @{
		@"productCode" : productCode,
		@"locationCode" : locationCode,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}



@end