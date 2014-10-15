/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminProductsLocationInventoryURLComponents.h"

@implementation MOZUAdminProductsLocationInventoryURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetLocationInventoriesOperationWithProductCode:(NSString *)productCode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/products/{ProductCode}/LocationInventory/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"productCode" : productCode,
		@"startIndex" : startIndex ? startIndex : @"",
		@"pageSize" : pageSize ? pageSize : @"",
		@"sortBy" : sortBy ? sortBy : @"",
		@"filter" : filter ? filter : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetLocationInventoryOperationWithProductCode:(NSString *)productCode locationCode:(NSString *)locationCode responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/products/{ProductCode}/LocationInventory/{LocationCode}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"productCode" : productCode,
		@"locationCode" : locationCode,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForAddLocationInventoryOperationWithProductCode:(NSString *)productCode performUpserts:(NSNumber *)performUpserts {
	NSString *template = @"/api/commerce/catalog/admin/products/{ProductCode}/LocationInventory?performUpserts={performUpserts}";
	NSDictionary *params = @{
		@"productCode" : productCode,
		@"performUpserts" : performUpserts ? performUpserts : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForUpdateLocationInventoryOperationWithProductCode:(NSString *)productCode {
	NSString *template = @"/api/commerce/catalog/admin/products/{ProductCode}/LocationInventory";
	NSDictionary *params = @{
		@"productCode" : productCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForDeleteLocationInventoryOperationWithProductCode:(NSString *)productCode locationCode:(NSString *)locationCode {
	NSString *template = @"/api/commerce/catalog/admin/products/{ProductCode}/LocationInventory/{LocationCode}";
	NSDictionary *params = @{
		@"productCode" : productCode,
		@"locationCode" : locationCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end