
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
#import "MOZUInStockNotificationSubscription.h"
#import "MOZUInStockNotificationSubscriptionCollection.h"


@interface MOZUInStockNotificationSubscriptionClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of in-stock notification subscriptions.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

+(MOZUClient*)clientForGetInStockNotificationSubscriptionsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the details of a subscription that sends a push notification when a product returns to active stock.
@param identifier Unique identifier of the in-stock notification subscription to retrieve.
*/

+(MOZUClient*)clientForGetInStockNotificationSubscriptionOperationWithIdentifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new subscription that notifies the customer when the product specified in the request is available in the active inventory of the defined location.
@param inStockNotificationSubscription Properties of a subscription that sends the customer a notification when a product returns to active stock.
*/

+(MOZUClient*)clientForAddInStockNotificationSubscriptionOperationWithBody:(MOZUInStockNotificationSubscription*)body userClaims:(MOZUUserAuthTicket*)userClaims;


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
Deletes a subscription for a customer in-stock notification.
@param identifier Unique identifier of the customer in-stock notification subscription to delete.
*/

+(MOZUClient*)clientForDeleteInStockNotificationSubscriptionOperationWithIdentifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket*)userClaims;



@end