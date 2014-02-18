
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAuthTicket.h"
#import "MOZUCustomerAccountAndAuthInfo.h"
#import "MOZUCustomerAccountCollection.h"
#import "MOZUCustomerAccount.h"
#import "MOZULoginState.h"
#import "MOZUCustomerLoginInfo.h"
#import "MOZUCustomerAuthTicket.h"
#import "MOZUResetPasswordInfo.h"


@interface MOZUCustomerAccountClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of customer accounts.
@param fields The fields to include in the response.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param isAnonymous 
@param pageSize 
@param q A list of customer account search terms to use in the query when searching across customer name and email. Separate multiple search terms with a space character.
@param qLimit The maximum number of search results to return in the response. You can limit any range between 1-100.
@param sortBy 
@param startIndex 
*/

+(MOZUClient*)clientForGetAccountsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter fields:(NSString*)fields q:(NSString*)q qLimit:(NSNumber*)qLimit isAnonymous:(NSNumber*)isAnonymous userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieve details of a customer account.
@param accountId Unique identifier of the customer account to retrieve.
*/

+(MOZUClient*)clientForGetAccountOperationWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the current login state of the customer account specified in the request.
@param accountId Unique identifier of the customer account.
*/

+(MOZUClient*)clientForGetLoginStateOperationWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new customer account based on the information specified in the request.
@param account Properties of the customer account to update.
*/

+(MOZUClient*)clientForAddAccountOperationWithAccount:(MOZUaccount*)account userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Adds a new user login to a defined customer account.
@param customerAuthInfo The authentication information for the customer account.
@param accountId Unique identifier of the customer account.
*/

+(MOZUClient*)clientForAddLoginToExistingCustomerOperationWithCustomerAuthInfo:(MOZUcustomerAuthInfo*)customerAuthInfo accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Updates the customer lifetime value of the specified customer account in the event of an order import or a lifetime value calculation error.
@param accountId The unique identifier of the customer account for which to calculate customer lifetime value.
*/

+(MOZUClient*)clientForRecomputeCustomerLifetimeValueOperationWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Lock or unlock a customer account.
@param isLocked If true, the customer account is locked from logging in.
@param accountId The unique identifier of the customer account.
*/

+(MOZUClient*)clientForSetLoginLockedOperationWithIsLocked:(isLocked)isLocked accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Requires the password for the customer account to be changed.
@param isPasswordChangeRequired If true, the password for the customer account must be changed.
@param accountId Unique identifier of the customer account.
*/

+(MOZUClient*)clientForSetPasswordChangeRequiredOperationWithIsPasswordChangeRequired:(isPasswordChangeRequired)isPasswordChangeRequired accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Creates a new customer account and logs the user associated with the customer account into the site.
@param accountAndAuthInfo Properties of the customer account to create, including the user authentication information.
*/

+(MOZUClient*)clientForAddAccountAndLoginOperationWithAccountAndAuthInfo:(MOZUaccountAndAuthInfo*)accountAndAuthInfo userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Creates multiple customer accounts based on the information specified in the request.
@param customers Properties of the customer accounts to create.
*/

+(MOZUClient*)clientForAddAccountsOperationWithCustomers:(NSArray<MOZUcustomers>*)customers userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the current login state of a customer account by providing the customer's email address.
@param emailAddress The email address associated with the customer account.
*/

+(MOZUClient*)clientForGetLoginStateByEmailAddressOperationWithEmailAddress:(NSString*)emailAddress userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the current login state of a customer account by providing the user name associated with the customer account.
@param userName The user name associated with the customer account.
*/

+(MOZUClient*)clientForGetLoginStateByUserNameOperationWithUserName:(NSString*)userName userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Resets the password for a customer account.
@param resetPasswordInfo Information required to reset the password for a customer account.
*/

+(MOZUClient*)clientForResetPasswordOperationWithResetPasswordInfo:(MOZUresetPasswordInfo*)resetPasswordInfo userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates a customer account.
@param account Properties of the customer account to update.
@param accountId Unique identifier of the customer account.
*/

+(MOZUClient*)clientForUpdateAccountOperationWithAccount:(MOZUaccount*)account accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a customer account. A customer account cannot be deleted if any orders exist, past or present.
@param accountId Unique identifier of the customer account to delete.
*/

+(MOZUClient*)clientForDeleteAccountOperationWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket*)userClaims;



@end