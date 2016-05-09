/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCommerceReturnsPackageURLComponents.h"

@implementation MOZUCommerceReturnsPackageURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetPackageLabelOperationWithReturnId:(NSString *)returnId packageId:(NSString *)packageId {
	NSString *template = @"/api/commerce/returns/{returnId}/packages/{packageId}/label";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"packageId" : packageId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetPackageOperationWithReturnId:(NSString *)returnId packageId:(NSString *)packageId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/{returnId}/packages/{packageId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"packageId" : packageId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForCreatePackageOperationWithReturnId:(NSString *)returnId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/{returnId}/packages?responseFields={responseFields}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForUpdatePackageOperationWithReturnId:(NSString *)returnId packageId:(NSString *)packageId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/returns/{returnId}/packages/{packageId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"packageId" : packageId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForDeletePackageOperationWithReturnId:(NSString *)returnId packageId:(NSString *)packageId {
	NSString *template = @"/api/commerce/returns/{returnId}/packages/{packageId}";
	NSDictionary *params = @{
		@"returnId" : returnId,
		@"packageId" : packageId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end