
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
#import "MOZUAPIContext.h"

#import "MOZUCardCollection.h"
#import "MOZUCard.h"


@interface MOZUCardResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of a credit card stored with a customer account billing contact.
@param accountId Unique identifier of the customer account.
@param cardId Unique identifier of the card associated with the customer account billing contact.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)accountCardWithAccountId:(NSInteger)accountId cardId:(NSString *)cardId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCard *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves all stored credit cards for the customer account.
@param accountId Unique identifier of the customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)accountCardsWithAccountId:(NSInteger)accountId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCardCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new credit card record and stores it for the customer account.
@param body Properties of the customer credit card to add to the account.
@param accountId Unique identifier of the customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addAccountCardWithBody:(MOZUCard *)body accountId:(NSInteger)accountId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCard *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update one or more properties of a credit card defined for a customer account.
@param body Properties of the customer account credit card to update.
@param accountId Unique identifier of the customer account.
@param cardId Unique identifier of the credit card.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateAccountCardWithBody:(MOZUCard *)body accountId:(NSInteger)accountId cardId:(NSString *)cardId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCard *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes a stored credit card from a customer account.
@param accountId Unique identifier of the customer account.
@param cardId Unique identifier of the credit card to delete.
*/

- (void)deleteAccountCardWithAccountId:(NSInteger)accountId cardId:(NSString *)cardId completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end