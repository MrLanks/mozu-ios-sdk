
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
#import "MOZUCustomerLoginInfo.h"
#import "MOZUCustomerAuthTicket.h"
#import "MOZUCustomerAccountAndAuthInfo.h"
#import "MOZUCustomerAccountCollection.h"
#import "MOZUAccountPasswordInfoCollection.h"
#import "MOZUChangePasswordResultCollection.h"
#import "MOZUCustomerAccount.h"
#import "MOZULoginState.h"
#import "MOZUResetPasswordInfo.h"
#import "MOZUPasswordInfo.h"


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
@param isAnonymous If true, retrieve anonymous shopper accounts in the response.
@param pageSize 
@param q A list of order search terms (not phrases) to use in the query when searching across order number and the name or email of the billing contact. When entering, separate multiple search terms with a space character.
@param qLimit The maximum number of search results to return in the response. You can limit any range between 1-100.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy 
@param startIndex 
*/

+ (MOZUClient *)clientForGetAccountsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter fields:(NSString *)fields q:(NSString *)q qLimit:(NSNumber *)qLimit isAnonymous:(NSNumber *)isAnonymous responseFields:(NSString *)responseFields;

/**
Retrieves the current login state of the customer account specified in the request.
@param accountId Unique identifier of the customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetLoginStateOperationWithAccountId:(NSInteger)accountId responseFields:(NSString *)responseFields;

/**
Retrieve details of a customer account.
@param accountId Unique identifier of the customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetAccountOperationWithAccountId:(NSInteger)accountId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new customer account based on the information specified in the request.
@param body Properties of the customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForAddAccountOperationWithBody:(MOZUCustomerAccount *)body responseFields:(NSString *)responseFields;

/**
Modify the password associated with a customer account.
@param body The information required to modify a shopper account password.
@param accountId Unique identifier of the customer account.
@param unlockAccount 
*/

+ (MOZUClient *)clientForChangePasswordOperationWithBody:(MOZUPasswordInfo *)body accountId:(NSInteger)accountId unlockAccount:(NSNumber *)unlockAccount;

/**
Adds a new user login to a defined customer account.
@param body The login information for a customer account.
@param accountId Unique identifier of the customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForAddLoginToExistingCustomerOperationWithBody:(MOZUCustomerLoginInfo *)body accountId:(NSInteger)accountId responseFields:(NSString *)responseFields;

/**
Updates the customer lifetime value of the specified customer account in the event of an order import or a lifetime value calculation error.
@param accountId Unique identifier of the customer account.
*/

+ (MOZUClient *)clientForRecomputeCustomerLifetimeValueOperationWithAccountId:(NSInteger)accountId;

/**
Lock or unlock a customer account.
@param body If true, the customer account is locked from logging in.
@param accountId Unique identifier of the customer account.
*/

+ (MOZUClient *)clientForSetLoginLockedOperationWithBody:(BOOL)body accountId:(NSInteger)accountId;

/**
Requires the password for the customer account to be changed.
@param body If true, the password for the customer account must be changed.
@param accountId Unique identifier of the customer account.
*/

+ (MOZUClient *)clientForSetPasswordChangeRequiredOperationWithBody:(BOOL)body accountId:(NSInteger)accountId;

/**
Creates a new customer account and logs the user associated with the customer account into the site.
@param body The authentication information associated with a customer account. The data includes the account properties such as the name, username, authorization access, and email address, the required password to match, and indicates if the account was imported from a third party resource. 
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForAddAccountAndLoginOperationWithBody:(MOZUCustomerAccountAndAuthInfo *)body responseFields:(NSString *)responseFields;

/**
Creates multiple customer accounts based on the information specified in the request.
@param body The authentication information associated with a customer account. The data includes the account properties such as the name, username, authorization access, and email address, the required password to match, and indicates if the account was imported from a third party resource. 
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForAddAccountsOperationWithBody:(NSArray<MOZUCustomerAccountAndAuthInfo> *)body responseFields:(NSString *)responseFields;

/**
Changes a collection of shopper passwords
@param body Mozu.Customer.Contracts.AccountPasswordInfoCollection ApiType DOCUMENT_HERE 
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/

+ (MOZUClient *)clientForChangePasswordsOperationWithBody:(MOZUAccountPasswordInfoCollection *)body responseFields:(NSString *)responseFields;

/**
Retrieves the current login state of a customer account by providing the customer's email address.
@param emailAddress The email address associated with the customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetLoginStateByEmailAddressOperationWithEmailAddress:(NSString *)emailAddress responseFields:(NSString *)responseFields;

/**
Retrieves the current login state of a customer account by providing the user name associated with the customer account.
@param responseFields Use this field to include those fields which are not included by default.
@param userName The user name associated with the customer account.
*/

+ (MOZUClient *)clientForGetLoginStateByUserNameOperationWithUserName:(NSString *)userName responseFields:(NSString *)responseFields;

/**
Resets the password for a customer account.
@param body Information required to reset the password for a customer account.
*/

+ (MOZUClient *)clientForResetPasswordOperationWithBody:(MOZUResetPasswordInfo *)body;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates a customer account.
@param body Properties of the customer account.
@param accountId Unique identifier of the customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForUpdateAccountOperationWithBody:(MOZUCustomerAccount *)body accountId:(NSInteger)accountId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a customer account. A customer account cannot be deleted if any orders exist, past or present.
@param accountId Unique identifier of the customer account.
*/

+ (MOZUClient *)clientForDeleteAccountOperationWithAccountId:(NSInteger)accountId;



@end