
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

#import "MOZUAuthTicket.h"
#import "MOZUTransaction.h"


@interface MOZUTransactionResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext *apiContext;

- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of transactions associated with the customer account specified in the request.
@param accountId Unique identifier of the customer account for which to retrieve transactions.
*/

- (void)transactionsWithAccountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSArray<MOZUTransaction> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new transaction for the customer account specified in the request.
@param body Properties of the transaction to create for the customer account.
@param accountId Unique identifier of the customer account.
*/

- (void)addTransactionWithBody:(MOZUTransaction *)body accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUTransaction *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a transaction from the customer account specified in the request.
@param accountId Unique identifier of the customer account from which to delete the transaction.
@param transactionId Unique identifier of the transaction to delete.
*/

- (void)removeTransactionWithAccountId:(NSInteger)accountId transactionId:(NSString *)transactionId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end