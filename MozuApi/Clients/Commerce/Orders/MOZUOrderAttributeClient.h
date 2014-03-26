
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
#import "MOZUOrderAttribute.h"


@interface MOZUOrderAttributeClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of order attributes.
@param orderId Identifier of the order whose order attributes are being retrieved.
*/

+ (MOZUClient *)clientForGetOrderAttributesOperationWithOrderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Create a new list of order attributes by providing the order ID.
@param body The attribute properties to create to associate with the order ID.
@param orderId Identifier of the order whose attributes are being created.
*/

+ (MOZUClient *)clientForCreateOrderAttributesOperationWithBody:(NSArray<MOZUOrderAttribute> *)body orderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update the properties of an order's attributes by providing the order ID and by removing any missing properties if removeMissing is set to true.
@param body List of order attributes being updated.
@param orderId Identifier of the order whose order attributes are being updated.
@param removeMissing If true, the operation removes missing properties so that the updated order attributes will not show properties with a null value.
*/

+ (MOZUClient *)clientForUpdateOrderAttributesOperationWithBody:(NSArray<MOZUOrderAttribute> *)body orderId:(NSString *)orderId removeMissing:(NSNumber *)removeMissing userClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end