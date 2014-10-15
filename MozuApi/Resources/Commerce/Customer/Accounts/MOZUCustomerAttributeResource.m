
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAttributeClient.h"
#import "MOZUCustomerAttributeResource.h"


@interface MOZUCustomerAttributeResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUCustomerAttributeResource

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
Retrieves the contents of an attribute associated with the specified customer account.
@param accountId Identifier of the customer account associated with the attribute to retrieve.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)accountAttributeWithAccountId:(NSInteger)accountId attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCustomerAttribute *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerAttributeClient clientForGetAccountAttributeOperationWithAccountId:accountId attributeFQN:attributeFQN responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the list of customer account attributes.
@param accountId Identifier of the customer account associated with the attributes to retrieve.
@param filter 
@param pageSize 
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy 
@param startIndex 
*/

- (void)accountAttributesWithAccountId:(NSInteger)accountId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCustomerAttributeCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerAttributeClient clientForGetAccountAttributesOperationWithAccountId:accountId startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter responseFields:responseFields];
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
Applies a defined attribute to the customer account specified in the request and assigns a value to the customer attribute.
@param body The attribute to add to the customer account.
@param accountId Unique identifier of the customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addAccountAttributeWithBody:(MOZUCustomerAttribute *)body accountId:(NSInteger)accountId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCustomerAttribute *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerAttributeClient clientForAddAccountAttributeOperationWithBody:body accountId:accountId responseFields:responseFields];
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
Updates one or more details of a customer account attribute.
@param body Properties of the customer account attribute to update.
@param accountId Identifier of the customer account associated with the attribute.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateAccountAttributeWithBody:(MOZUCustomerAttribute *)body accountId:(NSInteger)accountId attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCustomerAttribute *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerAttributeClient clientForUpdateAccountAttributeOperationWithBody:body accountId:accountId attributeFQN:attributeFQN responseFields:responseFields];
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
Removes the attribute specified in the request from the customer account.
@param accountId Unique identifier of the customer account.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/

- (void)deleteAccountAttributeWithAccountId:(NSInteger)accountId attributeFQN:(NSString *)attributeFQN completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCustomerAttributeClient clientForDeleteAccountAttributeOperationWithAccountId:accountId attributeFQN:attributeFQN];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end