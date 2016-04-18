
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAttributeLocalizedContentClient.h"
#import "MOZUAttributeLocalizedContentResource.h"


@interface MOZUAttributeLocalizedContentResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUAttributeLocalizedContentResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}


-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification {
	MOZUAPIContext* cloned = [self.apiContext cloneWith:apiContextModification];
	return [self initWithAPIContext:cloned];
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a collection of localized content for attributes based on a `localeCode`.
@param attributeFQN Fully qualified name for an attribute.
*/

- (void)attributeLocalizedContentsWithAttributeFQN:(NSString *)attributeFQN completionHandler:(void(^)(NSArray<MOZUAdminAttributeLocalizedContent> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAttributeLocalizedContentClient clientForGetAttributeLocalizedContentsOperationWithAttributeFQN:attributeFQN];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the localized content for an attribute based on a `localeCode`.
@param attributeFQN Fully qualified name for an attribute.
@param localeCode Language used for the entity. Currently, only "en-US" is supported.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)attributeLocalizedContentWithAttributeFQN:(NSString *)attributeFQN localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminAttributeLocalizedContent *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAttributeLocalizedContentClient clientForGetAttributeLocalizedContentOperationWithAttributeFQN:attributeFQN localeCode:localeCode responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds new localized content for an attribute based on a `localeCode`.
@param body The localized name and description of the attribute, displayed in the locale defined for the master catalog.
@param attributeFQN Fully qualified name for an attribute.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addLocalizedContentWithBody:(MOZUAdminAttributeLocalizedContent *)body attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminAttributeLocalizedContent *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAttributeLocalizedContentClient clientForAddLocalizedContentOperationWithBody:body attributeFQN:attributeFQN responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the localized content for a collection of existing attributes based on a `localeCode`.
@param body The localized name and description of the attribute, displayed in the locale defined for the master catalog.
@param attributeFQN Fully qualified name for an attribute.
*/

- (void)updateLocalizedContentsWithBody:(NSArray<MOZUAdminAttributeLocalizedContent> *)body attributeFQN:(NSString *)attributeFQN completionHandler:(void(^)(NSArray<MOZUAdminAttributeLocalizedContent> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAttributeLocalizedContentClient clientForUpdateLocalizedContentsOperationWithBody:body attributeFQN:attributeFQN];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Updates the localized content for an existing attribute based on a `localeCode`.
@param body The localized name and description of the attribute, displayed in the locale defined for the master catalog.
@param attributeFQN Fully qualified name for an attribute.
@param localeCode Language used for the entity. Currently, only "en-US" is supported.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateLocalizedContentWithBody:(MOZUAdminAttributeLocalizedContent *)body attributeFQN:(NSString *)attributeFQN localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminAttributeLocalizedContent *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAttributeLocalizedContentClient clientForUpdateLocalizedContentOperationWithBody:body attributeFQN:attributeFQN localeCode:localeCode responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes all localized content. Localized content is translated text information and data based on a `localeCode`. 
@param attributeFQN Fully qualified name for an attribute.
@param localeCode Language used for the entity. Currently, only "en-US" is supported.
*/

- (void)deleteLocalizedContentWithAttributeFQN:(NSString *)attributeFQN localeCode:(NSString *)localeCode completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUAttributeLocalizedContentClient clientForDeleteLocalizedContentOperationWithAttributeFQN:attributeFQN localeCode:localeCode];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end