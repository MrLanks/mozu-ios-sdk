
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
#import "MOZUOrder.h"
#import "MOZUOrderItem.h"
#import "MOZUAppliedDiscount.h"
#import "MOZUOrderItemCollection.h"


@interface MOZUOrderItemResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of a single order item.
@param draft If true, retrieve the draft version of this order item, which might include uncommitted changes to the order item, the order, or other order components.
@param orderId Unique identifier of the order item to retrieve.
@param orderItemId Unique identifier of the order item details to retrieve.
*/

-(void)orderItemWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId draft:(NSNumber*)draft userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrderItem* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves the details of all items in an order.
@param draft If true, retrieve the draft version of the order's items, which might include uncommitted changes to one or more order items, the order itself, or other order components.
@param orderId Unique identifier of the order items to retrieve.
*/

-(void)orderItemsWithOrderId:(NSString*)orderId draft:(NSNumber*)draft userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrderItemCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds a new item to an existing order.
@param orderItem The properties of the item to create in the existing order.
@param orderId Unique identifier of the order for which to add the item.
@param skipInventoryCheck If true, do not validate the product inventory when adding this item to the order.
@param updateMode Specifies whether to add the item by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

-(void)createOrderItemWithOrderItem:(MOZUorderItem*)orderItem orderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version skipInventoryCheck:(NSNumber*)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrder* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update the discount applied to an item in an order.
@param discount Properties of the discount to modify for the order item.
@param discountId Unique identifier of the discount. System-supplied and read only.
@param orderId Unique identifier of the order associated with the item discount.
@param orderItemId Unique identifier of the item in the order.
@param updateMode Specifies whether to change the item discount by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

-(void)updateOrderItemDiscountWithDiscount:(MOZUdiscount*)discount orderId:(NSString*)orderId orderItemId:(NSString*)orderItemId discountId:(NSInteger)discountId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrder* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Updates the item fulfillment information for the order specified in the request.
@param orderItem Properties of the order item to update for fulfillment.
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item in the order.
@param updateMode Specifies whether to apply the coupon by updating the original order, updating the order in draft mode, or updating the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

-(void)updateItemFulfillmentWithOrderItem:(MOZUorderItem*)orderItem orderId:(NSString*)orderId orderItemId:(NSString*)orderItemId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrder* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Override the price of an individual product on a line item in the specified order.
@param orderId Unique identifier of the order containing the item to price override.
@param orderItemId Unique identifier of the item in the order to price override.
@param price The override price to specify for this item in the specified order.
@param updateMode Specifies whether to change the product price by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

-(void)updateItemProductPriceWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId price:(NSDecimalNumber*)price updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrder* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Update the quantity of an item in an order.
@param orderId Unique identifier of the order containing the item to update quantity.
@param orderItemId Unique identifier of the item in the order to update quantity.
@param quantity The quantity of the item in the order to update.
@param updateMode Specifies whether to change the item quantity by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

-(void)updateItemQuantityWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId quantity:(NSInteger)quantity updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrder* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes a previously added item from an existing order.
@param orderId Unique identifier of the order with the item to remove.
@param orderItemId Unique identifier of the item to remove from the order.
@param updateMode Specifies whether to remove the item by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

-(void)deleteOrderItemWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUOrder* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end