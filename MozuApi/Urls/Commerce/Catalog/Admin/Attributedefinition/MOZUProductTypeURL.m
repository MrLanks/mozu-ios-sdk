/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductTypeURL.h"

@implementation MOZUProductTypeURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetProductTypesOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"startIndex" : @(startIndex),
		@"pageSize" : @(pageSize),
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetProductTypeOperationWithProductTypeId:(NSInteger)productTypeId {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}";
	NSDictionary* params = @{
		@"productTypeId" : @(productTypeId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForAddProductTypeOperation {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateProductTypeOperationWithProductTypeId:(NSInteger)productTypeId {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}";
	NSDictionary* params = @{
		@"productTypeId" : @(productTypeId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteProductTypeOperationWithProductTypeId:(NSInteger)productTypeId {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/producttypes/{productTypeId}";
	NSDictionary* params = @{
		@"productTypeId" : @(productTypeId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}



@end