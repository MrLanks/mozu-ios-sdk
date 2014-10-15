
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"



@protocol MOZUChangeMessage
@end


/**
	Properties of a system message displayed when a change, such as a change in product price, occurs for a cart or order.
*/
@interface MOZUChangeMessage : JSONModel<MOZUChangeMessage>

/**
The order or item amount changed, if applicable.
*/
@property(nonatomic) NSNumber * amount;

/**
Date and time when the entity was created, represented in UTC Date/Time.
*/
@property(nonatomic) NSDate * createDate;

/**
Unique identifier of the change message. System-supplied and read-only.
*/
@property(nonatomic) NSString * id;

/**
Identifier for the object associated with the change message, which can represent a cart, cart item, or an order.
*/
@property(nonatomic) NSString * identifier;

/**
The text of the change message, such as "This product is no longer available". System-supplied and read-only.
*/
@property(nonatomic) NSString * message;

/**
The new value of the object affected by the change, such as the new price of the product. System-supplied and read-only.
*/
@property(nonatomic) NSString * theNewValue;

/**
The prior value of the object affected by the change, such as the price of the product when it was added to the cart. System-supplied and read-only.
*/
@property(nonatomic) NSString * oldValue;

/**
The text that appears on the subject line of the message, such as "The product price has changed."
*/
@property(nonatomic) NSString * subject;

/**
Represents the type of object affected by the change, such as Cart Item or Product. System-supplied and read-only.
*/
@property(nonatomic) NSString * subjectType;

/**
If true, the change associated with the message executed successfully.
*/
@property(nonatomic) NSNumber * success;

/**
The unique identifier of the user who initiated the change.
*/
@property(nonatomic) NSString * userId;

/**
The action associated with this message. For example, if the price of a product changes, the verb could be "Increased" or "Decreased". If the product is no longer available, the verb could be "Invalidated". System-supplied and read-only.
*/
@property(nonatomic) NSString * verb;

@end

