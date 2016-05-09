/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminFacetURLComponents.h"

@implementation MOZUAdminFacetURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetFacetOperationWithFacetId:(NSInteger)facetId validate:(NSNumber *)validate responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/facets/{facetId}?validate={validate}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"facetId" : @(facetId),
		@"validate" : validate ? validate : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetFacetCategoryListOperationWithCategoryId:(NSInteger)categoryId includeAvailable:(NSNumber *)includeAvailable validate:(NSNumber *)validate responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/facets/category/{categoryId}?includeAvailable={includeAvailable}&validate={validate}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"categoryId" : @(categoryId),
		@"includeAvailable" : includeAvailable ? includeAvailable : @"",
		@"validate" : validate ? validate : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForAddFacetOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/facets/?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForUpdateFacetOperationWithFacetId:(NSInteger)facetId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/facets/{facetId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"facetId" : @(facetId),
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForDeleteFacetByIdOperationWithFacetId:(NSInteger)facetId {
	NSString *template = @"/api/commerce/catalog/admin/facets/{facetId}";
	NSDictionary *params = @{
		@"facetId" : @(facetId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end