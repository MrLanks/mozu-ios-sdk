
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAccountClient.h"
#import "MOZUCustomerAccountURLComponents.h"
#import "MozuCustomerAccountCollection.h"
#import "MozuCustomerAccount.h"
#import "MozuLoginState.h"
#import "MozuCustomerAuthTicket.h"


@implementation MOZUCustomerAccountClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetAccountsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter fields:(NSString *)fields q:(NSString *)q qLimit:(NSNumber *)qLimit isAnonymous:(NSNumber *)isAnonymous responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForGetAccountsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter fields:fields q:q qLimit:qLimit isAnonymous:isAnonymous responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAccountCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetLoginStateOperationWithAccountId:(NSInteger)accountId responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForGetLoginStateOperationWithAccountId:accountId responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZULoginState alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetAccountOperationWithAccountId:(NSInteger)accountId responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForGetAccountOperationWithAccountId:accountId responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAccount alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForAddAccountOperationWithBody:(MOZUCustomerAccount *)body responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForAddAccountOperationWithResponseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAccount alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForChangePasswordOperationWithBody:(MOZUPasswordInfo *)body accountId:(NSInteger)accountId {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForChangePasswordOperationWithAccountId:accountId];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	return client;
}

+ (MOZUClient *)clientForAddLoginToExistingCustomerOperationWithBody:(MOZUCustomerLoginInfo *)body accountId:(NSInteger)accountId responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForAddLoginToExistingCustomerOperationWithAccountId:accountId responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForRecomputeCustomerLifetimeValueOperationWithAccountId:(NSInteger)accountId {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForRecomputeCustomerLifetimeValueOperationWithAccountId:accountId];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}

+ (MOZUClient *)clientForSetLoginLockedOperationWithBody:(BOOL)body accountId:(NSInteger)accountId {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForSetLoginLockedOperationWithAccountId:accountId];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = @(body);
	return client;
}

+ (MOZUClient *)clientForSetPasswordChangeRequiredOperationWithBody:(BOOL)body accountId:(NSInteger)accountId {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForSetPasswordChangeRequiredOperationWithAccountId:accountId];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = @(body);
	return client;
}

+ (MOZUClient *)clientForAddAccountAndLoginOperationWithBody:(MOZUCustomerAccountAndAuthInfo *)body responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForAddAccountAndLoginOperationWithResponseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForAddAccountsOperationWithBody:(NSArray<MOZUCustomerAccountAndAuthInfo> *)body responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForAddAccountsOperationWithResponseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAccountCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetLoginStateByEmailAddressOperationWithEmailAddress:(NSString *)emailAddress responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForGetLoginStateByEmailAddressOperationWithEmailAddress:emailAddress responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZULoginState alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetLoginStateByUserNameOperationWithUserName:(NSString *)userName responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForGetLoginStateByUserNameOperationWithUserName:userName responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZULoginState alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForResetPasswordOperationWithBody:(MOZUResetPasswordInfo *)body {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForResetPasswordOperation];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdateAccountOperationWithBody:(MOZUCustomerAccount *)body accountId:(NSInteger)accountId responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForUpdateAccountOperationWithAccountId:accountId responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAccount alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeleteAccountOperationWithAccountId:(NSInteger)accountId {
	id url = [MOZUCustomerAccountURLComponents URLComponentsForDeleteAccountOperationWithAccountId:accountId];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end