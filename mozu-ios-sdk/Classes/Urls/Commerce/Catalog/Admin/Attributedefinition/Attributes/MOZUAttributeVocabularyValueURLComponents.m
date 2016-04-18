/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAttributeVocabularyValueURLComponents.h"

@implementation MOZUAttributeVocabularyValueURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetAttributeVocabularyValuesOperationWithAttributeFQN:(NSString *)attributeFQN {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/VocabularyValues";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetAttributeVocabularyValueLocalizedContentsOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/VocabularyValues/{value}/LocalizedContent";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"value" : value,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetAttributeVocabularyValueLocalizedContentOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/VocabularyValues/{value}/LocalizedContent/{localeCode}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"value" : value,
		@"localeCode" : localeCode,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetAttributeVocabularyValueOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/VocabularyValues/{value}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"value" : value,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForAddAttributeVocabularyValueLocalizedContentOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/VocabularyValues/{value}/localizedContent?responseFields={responseFields}";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"value" : value,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForAddAttributeVocabularyValueOperationWithAttributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/VocabularyValues?responseFields={responseFields}";
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

+ (MOZUURLComponents *)URLComponentsForUpdateAttributeVocabularyValuesOperationWithAttributeFQN:(NSString *)attributeFQN {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/VocabularyValues";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForUpdateAttributeVocabularyValueLocalizedContentsOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/VocabularyValues/{value}/LocalizedContent";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"value" : value,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForUpdateAttributeVocabularyValueLocalizedContentOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/VocabularyValues/{value}/LocalizedContent/{localeCode}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"value" : value,
		@"localeCode" : localeCode,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForUpdateAttributeVocabularyValueOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/VocabularyValues/{value}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"value" : value,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForDeleteAttributeVocabularyValueOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/VocabularyValues/{value}";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"value" : value,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForDeleteAttributeVocabularyValueLocalizedContentOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value localeCode:(NSString *)localeCode {
	NSString *template = @"/api/commerce/catalog/admin/attributedefinition/attributes/{attributeFQN}/VocabularyValues/{value}/LocalizedContent/{localeCode}";
	NSDictionary *params = @{
		@"attributeFQN" : attributeFQN,
		@"value" : value,
		@"localeCode" : localeCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end