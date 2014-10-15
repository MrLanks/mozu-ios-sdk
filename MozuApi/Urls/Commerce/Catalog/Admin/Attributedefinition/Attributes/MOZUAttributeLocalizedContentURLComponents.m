/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAttributeLocalizedContentURLComponents.h"

@implementation MOZUAttributeLocalizedContentURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetAttributeLocalizedContentsOperationWithAttributeFQN:(NSString *)attributeFQN {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/LocalizedContent";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetAttributeLocalizedContentOperationWithAttributeFQN:(NSString *)attributeFQN localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/LocalizedContent/{localeCode}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"localeCode" : localeCode,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForAddLocalizedContentOperationWithAttributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/LocalizedContent?responseFields={responseFields}";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForUpdateLocalizedContentsOperationWithAttributeFQN:(NSString *)attributeFQN {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/LocalizedContent";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForUpdateLocalizedContentOperationWithAttributeFQN:(NSString *)attributeFQN localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/LocalizedContent/{localeCode}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"localeCode" : localeCode,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForDeleteLocalizedContentOperationWithAttributeFQN:(NSString *)attributeFQN localeCode:(NSString *)localeCode {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/LocalizedContent/{localeCode}";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"localeCode" : localeCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end