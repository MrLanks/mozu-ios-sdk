
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAccountClient.h"
#import "MOZUCustomerAccountResource.h"


@interface MOZUCustomerAccountResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUCustomerAccountResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

-(void)accountsWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter fields:(NSString*)fields q:(NSString*)q qLimit:(NSNumber*)qLimit isAnonymous:(NSNumber*)isAnonymous userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAccountCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForGetAccountsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter fields:fields q:q qLimit:qLimit isAnonymous:isAnonymous userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)accountWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAccount* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForGetAccountOperationWithAccountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)loginStateWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULoginState* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForGetLoginStateOperationWithAccountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
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

-(void)addAccountWithAccount:(MOZUaccount*)account userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAccount* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForAddAccountOperationWithAccount:account userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)addLoginToExistingCustomerWithCustomerAuthInfo:(MOZUcustomerAuthInfo*)customerAuthInfo accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForAddLoginToExistingCustomerOperationWithCustomerAuthInfo:customerAuthInfo accountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)recomputeCustomerLifetimeValueWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForRecomputeCustomerLifetimeValueOperationWithAccountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}

-(void)setLoginLockedWithIsLocked:(isLocked)isLocked accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForSetLoginLockedOperationWithIsLocked:isLocked accountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}

-(void)setPasswordChangeRequiredWithIsPasswordChangeRequired:(isPasswordChangeRequired)isPasswordChangeRequired accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForSetPasswordChangeRequiredOperationWithIsPasswordChangeRequired:isPasswordChangeRequired accountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}

-(void)addAccountAndLoginWithAccountAndAuthInfo:(MOZUaccountAndAuthInfo*)accountAndAuthInfo userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAuthTicket* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForAddAccountAndLoginOperationWithAccountAndAuthInfo:accountAndAuthInfo userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)addAccountsWithCustomers:(NSArray<MOZUcustomers>*)customers userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAccountCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForAddAccountsOperationWithCustomers:customers userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)loginStateByEmailAddressWithEmailAddress:(NSString*)emailAddress userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULoginState* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForGetLoginStateByEmailAddressOperationWithEmailAddress:emailAddress userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)loginStateByUserNameWithUserName:(NSString*)userName userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZULoginState* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForGetLoginStateByUserNameOperationWithUserName:userName userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

-(void)resetPasswordWithResetPasswordInfo:(MOZUresetPasswordInfo*)resetPasswordInfo userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForResetPasswordOperationWithResetPasswordInfo:resetPasswordInfo userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

-(void)updateAccountWithAccount:(MOZUaccount*)account accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCustomerAccount* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForUpdateAccountOperationWithAccount:account accountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
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

-(void)deleteAccountWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCustomerAccountClient clientForDeleteAccountOperationWithAccountId:accountId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end