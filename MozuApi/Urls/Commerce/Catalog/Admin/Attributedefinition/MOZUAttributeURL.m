/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAttributeURL.h"

@implementation MOZUAttributeURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetAttributesOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/attributes/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"startIndex" : @(startIndex),
		@"pageSize" : @(pageSize),
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetAttributeOperationWithAttributeFQN:(NSString*)attributeFQN {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}";
	NSDictionary* params = @{
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForAddAttributeOperation {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/attributes/";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateAttributeOperationWithAttributeFQN:(NSString*)attributeFQN {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}";
	NSDictionary* params = @{
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteAttributeOperationWithAttributeFQN:(NSString*)attributeFQN {
	NSString* template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}";
	NSDictionary* params = @{
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}



@end