/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURL.h"

@interface MOZUOrderItemURL : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url for getOrderItem
@param orderId Unique identifier of the order item to retrieve.
@param orderItemId Unique identifier of the order item details to retrieve.
@param draft If true, retrieve the draft version of this order item, which might include uncommitted changes to the order item, the order, or other order components.
*/
+(MOZUURL*)URLForGetOrderItemOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId draft:(NSNumber*)draft;

/**
Resource Url for getOrderItems
@param orderId Unique identifier of the order items to retrieve.
@param draft If true, retrieve the draft version of the order's items, which might include uncommitted changes to one or more order items, the order itself, or other order components.
*/
+(MOZUURL*)URLForGetOrderItemsOperationWithOrderId:(NSString*)orderId draft:(NSNumber*)draft;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url for createOrderItem
@param orderId Unique identifier of the order for which to add the item.
@param updateMode Specifies whether to add the item by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
@param skipInventoryCheck If true, do not validate the product inventory when adding this item to the order.
*/
+(MOZUURL*)URLForCreateOrderItemOperationWithOrderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version skipInventoryCheck:(NSNumber*)skipInventoryCheck;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url for updateOrderItemDiscount
@param orderId Unique identifier of the order associated with the item discount.
@param orderItemId Unique identifier of the item in the order.
@param discountId Unique identifier of the discount. System-supplied and read only.
@param updateMode Specifies whether to change the item discount by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/
+(MOZUURL*)URLForUpdateOrderItemDiscountOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId discountId:(NSInteger)discountId updateMode:(NSString*)updateMode version:(NSString*)version;

/**
Resource Url for updateItemFulfillment
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item in the order.
@param updateMode Specifies whether to apply the coupon by updating the original order, updating the order in draft mode, or updating the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/
+(MOZUURL*)URLForUpdateItemFulfillmentOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId updateMode:(NSString*)updateMode version:(NSString*)version;

/**
Resource Url for updateItemProductPrice
@param orderId Unique identifier of the order containing the item to price override.
@param orderItemId Unique identifier of the item in the order to price override.
@param price The override price to specify for this item in the specified order.
@param updateMode Specifies whether to change the product price by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/
+(MOZUURL*)URLForUpdateItemProductPriceOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId price:(NSDecimalNumber*)price updateMode:(NSString*)updateMode version:(NSString*)version;

/**
Resource Url for updateItemQuantity
@param orderId Unique identifier of the order containing the item to update quantity.
@param orderItemId Unique identifier of the item in the order to update quantity.
@param quantity The quantity of the item in the order to update.
@param updateMode Specifies whether to change the item quantity by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/
+(MOZUURL*)URLForUpdateItemQuantityOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId quantity:(NSInteger)quantity updateMode:(NSString*)updateMode version:(NSString*)version;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url for deleteOrderItem
@param orderId Unique identifier of the order with the item to remove.
@param orderItemId Unique identifier of the item to remove from the order.
@param updateMode Specifies whether to remove the item by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/
+(MOZUURL*)URLForDeleteOrderItemOperationWithOrderId:(NSString*)orderId orderItemId:(NSString*)orderItemId updateMode:(NSString*)updateMode version:(NSString*)version;



@end