/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUOrderItemURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getOrderItemViaLineId
@param orderId Unique identifier of the order.
@param lineId 
@param draft If true, retrieve the draft version of the order, which might include uncommitted changes to the order or its components.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/
+ (MOZUURLComponents *)URLComponentsForGetOrderItemViaLineIdOperationWithOrderId:(NSString *)orderId lineId:(NSInteger)lineId draft:(NSNumber *)draft responseFields:(NSString *)responseFields;

/**
Resource Url Components for getOrderItem
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param draft If true, retrieve the draft version of the order, which might include uncommitted changes to the order or its components.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetOrderItemOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId draft:(NSNumber *)draft responseFields:(NSString *)responseFields;

/**
Resource Url Components for getOrderItems
@param orderId Unique identifier of the order.
@param draft If true, retrieve the draft version of the order, which might include uncommitted changes to the order or its components.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetOrderItemsOperationWithOrderId:(NSString *)orderId draft:(NSNumber *)draft responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for createOrderItem
@param orderId Unique identifier of the order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
@param skipInventoryCheck If true, skip the process to validate inventory when creating this product reservation.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForCreateOrderItemOperationWithOrderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version skipInventoryCheck:(NSNumber *)skipInventoryCheck responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateOrderItemDiscount
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param discountId discountId parameter description DOCUMENT_HERE 
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateOrderItemDiscountOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId discountId:(NSInteger)discountId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields;

/**
Resource Url Components for updateItemDuty
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param dutyAmount The amount added to the order item for duty fees.
        
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version Determines whether or not to check versioning of items for concurrency purposes.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateItemDutyOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId dutyAmount:(NSNumber *)dutyAmount updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields;

/**
Resource Url Components for updateItemFulfillment
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateItemFulfillmentOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields;

/**
Resource Url Components for updateItemProductPrice
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param price The override price to specify for this item in the specified order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateItemProductPriceOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId price:(NSNumber *)price updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields;

/**
Resource Url Components for updateItemQuantity
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param quantity The number of cart items in the shopper's active cart.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateItemQuantityOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId quantity:(NSInteger)quantity updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteOrderItem
@param orderId Unique identifier of the order.
@param orderItemId Unique identifier of the item to remove from the order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteOrderItemOperationWithOrderId:(NSString *)orderId orderItemId:(NSString *)orderItemId updateMode:(NSString *)updateMode version:(NSString *)version;



@end