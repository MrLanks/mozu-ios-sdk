
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
#import "MOZUCustomerContact.h"
#import "MOZUCustomerContactCollection.h"


@interface MOZUCustomerContactClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the specified contact for a customer account such as a billing or shipping contact.
@param accountId Unique identifier of the customer account.
@param contactId Unique identifer of the customer account contact being updated.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetAccountContactOperationWithAccountId:(NSInteger)accountId contactId:(NSInteger)contactId responseFields:(NSString *)responseFields;

/**
Retrieves a list of contacts for a customer according to any specified filter criteria and sort options.
@param accountId Unique identifier of the customer account.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy 
@param startIndex 
*/

+ (MOZUClient *)clientForGetAccountContactsOperationWithAccountId:(NSInteger)accountId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new contact for a customer account such as a new shipping address.
@param body Contact information, including the contact's name, address, phone numbers, email addresses, and company (if supplied). Also indicates whether this is a billing, shipping, or billing and shipping contact.
@param accountId Unique identifier of the customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForAddAccountContactOperationWithBody:(MOZUCustomerContact *)body accountId:(NSInteger)accountId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates a contact for a specified customer account such as to update addresses or change which contact is the primary contact for billing.
@param body Contact information, including the contact's name, address, phone numbers, email addresses, and company (if supplied). Also indicates whether this is a billing, shipping, or billing and shipping contact.
@param accountId Unique identifier of the customer account.
@param contactId Unique identifer of the customer account contact being updated.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForUpdateAccountContactOperationWithBody:(MOZUCustomerContact *)body accountId:(NSInteger)accountId contactId:(NSInteger)contactId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a contact for the specified customer account.
@param accountId Unique identifier of the customer account.
@param contactId Unique identifer of the customer account contact being updated.
*/

+ (MOZUClient *)clientForDeleteAccountContactOperationWithAccountId:(NSInteger)accountId contactId:(NSInteger)contactId;



@end