
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
#import "MOZUAdjustment.h"
#import "MOZUOrder.h"


@interface MOZUAdjustmentClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Applies a shipping adjustment to the specified order.
@param adjustment Properties of the shipping adjustment to apply to the order.
@param orderId Unique identifier of the order associated with the shipping adjustment.
@param updateMode Specifies whether to apply the shipping adjustment by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

+(MOZUClient*)clientForApplyShippingAdjustmentOperationWithAdjustment:(MOZUadjustment*)adjustment orderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Applies a price adjustment to the specified order.
@param adjustment Properties of the price adjustment to apply to the order.
@param orderId Unique identifier of the order for which to apply the adjustment.
@param updateMode Specifies whether to apply the adjustment by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

+(MOZUClient*)clientForApplyAdjustmentOperationWithAdjustment:(MOZUadjustment*)adjustment orderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes a shipping adjustment previously applied to an order or draft.
@param orderId Unique identifier of the order with the applied shipping adjustment.
@param updateMode Specifies whether to remove the shipping adjustment by updating the original order, updating the order in draft mode, or updating the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

+(MOZUClient*)clientForRemoveShippingAdjustmentOperationWithOrderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Removes a price adjustment from the specified order.
@param orderId Unique identifier of the order for which to delete the adjustment.
@param updateMode Specifies whether to remove the adjustment by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

+(MOZUClient*)clientForRemoveAdjustmentOperationWithOrderId:(NSString*)orderId updateMode:(NSString*)updateMode version:(NSString*)version userClaims:(MOZUUserAuthTicket*)userClaims;



@end