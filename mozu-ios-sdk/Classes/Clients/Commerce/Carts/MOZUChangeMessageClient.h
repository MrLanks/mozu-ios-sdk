
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
#import "MOZUCartChangeMessageCollection.h"


@interface MOZUChangeMessageClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the messages associated with the current shopper's cart.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetMessagesOperationWithResponseFields:(NSString *)responseFields;


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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes all messages associated with the cart of the current shopper.
*/

+ (MOZUClient *)clientForRemoveAllMessagesOperation;

/**
Removes a single message associated with the cart of the current shopper.
@param messageId Identifier of the message to remove from the cart.
*/

+ (MOZUClient *)clientForRemoveMessageOperationWithMessageId:(NSString *)messageId;



@end