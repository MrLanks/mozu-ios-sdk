/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUChangeMessageURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getMessages
*/
+ (MOZUURLComponents *)URLComponentsForGetMessagesOperation;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for removeAllMessages
*/
+ (MOZUURLComponents *)URLComponentsForRemoveAllMessagesOperation;

/**
Resource Url Components for removeMessage
@param messageId Identifier of the message to remove from the cart.
*/
+ (MOZUURLComponents *)URLComponentsForRemoveMessageOperationWithMessageId:(NSString *)messageId;



@end