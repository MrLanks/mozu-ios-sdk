/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURL.h"

@interface MOZUReturnURL : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url for getReturns
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
*/
+(MOZUURL*)URLForGetReturnsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter;

/**
Resource Url for getReturn
@param returnId Returns the properties of the return specified in the request as well as system-supplied information.
*/
+(MOZUURL*)URLForGetReturnOperationWithReturnId:(NSString*)returnId;

/**
Resource Url for getAvailableReturnActions
@param returnId Retrieves a list of the actions available to perform for the specified return based on its current state.
*/
+(MOZUURL*)URLForGetAvailableReturnActionsOperationWithReturnId:(NSString*)returnId;

/**
Resource Url for getPayments
@param returnId Returns the details of the refund payment associated with the return specified in the request.
*/
+(MOZUURL*)URLForGetPaymentsOperationWithReturnId:(NSString*)returnId;

/**
Resource Url for getPayment
@param returnId Unique identifier of the return associated with the payment.
@param paymentId Unique identifier of the return payment to retrieve.
*/
+(MOZUURL*)URLForGetPaymentOperationWithReturnId:(NSString*)returnId paymentId:(NSString*)paymentId;

/**
Resource Url for getAvailablePaymentActionsForReturn
@param returnId Unique identifier of the return associated with the payment.
@param paymentId Unique identifier of the payment for which to perform the action.
*/
+(MOZUURL*)URLForGetAvailablePaymentActionsForReturnOperationWithReturnId:(NSString*)returnId paymentId:(NSString*)paymentId;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url for createReturn
*/
+(MOZUURL*)URLForCreateReturnOperation;

/**
Resource Url for performPaymentActionForReturn
@param returnId Unique identifier of the return associated with the refund payment.
@param paymentId Unique identifier of the return payment to update.
*/
+(MOZUURL*)URLForPerformPaymentActionForReturnOperationWithReturnId:(NSString*)returnId paymentId:(NSString*)paymentId;

/**
Resource Url for createPaymentActionForReturn
@param returnId Unique identifier of the return associated with the payment action.
*/
+(MOZUURL*)URLForCreatePaymentActionForReturnOperationWithReturnId:(NSString*)returnId;

/**
Resource Url for performReturnActions
*/
+(MOZUURL*)URLForPerformReturnActionsOperation;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url for updateReturn
@param returnId Unique identifier of the return.
*/
+(MOZUURL*)URLForUpdateReturnOperationWithReturnId:(NSString*)returnId;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url for deleteReturn
@param returnId Unique identifier of the return to delete.
*/
+(MOZUURL*)URLForDeleteReturnOperationWithReturnId:(NSString*)returnId;



@end