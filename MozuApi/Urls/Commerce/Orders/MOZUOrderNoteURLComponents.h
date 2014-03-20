/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUOrderNoteURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getOrderNotes
@param orderId Unique identifier of the order.
*/
+ (MOZUURLComponents *)URLComponentsForGetOrderNotesOperationWithOrderId:(NSString *)orderId;

/**
Resource Url Components for getOrderNote
@param orderId Unique identifier of the order associated with the note.
@param noteId Unique identifier of the order note to retrieve.
*/
+ (MOZUURLComponents *)URLComponentsForGetOrderNoteOperationWithOrderId:(NSString *)orderId noteId:(NSString *)noteId;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for createOrderNote
@param orderId Unique identifier of the order for which to add a note.
*/
+ (MOZUURLComponents *)URLComponentsForCreateOrderNoteOperationWithOrderId:(NSString *)orderId;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateOrderNote
@param orderId Unique identifier of the order.
@param noteId Unique identifier of the order note.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateOrderNoteOperationWithOrderId:(NSString *)orderId noteId:(NSString *)noteId;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteOrderNote
@param orderId Unique identifier of the order associated with the note.
@param noteId Unique identifier of the order note to delete.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteOrderNoteOperationWithOrderId:(NSString *)orderId noteId:(NSString *)noteId;



@end