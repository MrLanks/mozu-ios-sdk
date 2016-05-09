
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
Unique identifier of an app available in your Mozu tenant or within Mozu Dev Center. This ID is unique across all apps installed, initialized, and enabled in the Mozu Admin and those in development through the Dev Center Console.
*/
@property(nonatomic) NSString * appId;

/**
The application's key.
*/
@property(nonatomic) NSString * appKey;

/**
The application's name.
*/
@property(nonatomic) NSString * appName;

/**
The unique identifier of the API request associated with the event action, which might contain multiple actions.
*/
@property(nonatomic) NSString * correlationId;

/**
Date and time when the entity was created, represented in UTC Date/Time.
*/
@property(nonatomic) NSDate * createDate;

/**
Unique identifier of the source product property. For a product field it will be the name of the field. For a product attribute it will be the Attribute FQN. 
*/
@property(nonatomic) NSString * id;

/**
Identifier for the object associated with the change message, which can represent a cart, cart item, or an order.
*/
@property(nonatomic) NSString * identifier;

/**
The text of the change message, such as "This product is no longer available." System-supplied and read-only.
*/
@property(nonatomic) NSString * message;

/**
Metadata content for entities, used by document lists, document type lists, document type, views, entity lists, and list views.
*/
@property(nonatomic) NSObject * metadata;

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
The user's first name.
*/
@property(nonatomic) NSString * userFirstName;

/**
Unique identifier of the customer account (shopper or system user). System-supplied and read-only. If the shopper user is anonymous, the user ID represents a system-generated user ID string.
*/
@property(nonatomic) NSString * userId;

/**
The user's last name.
*/
@property(nonatomic) NSString * userLastName;

/**
The user type (e.g. Shopper, Admin, etc.).
*/
@property(nonatomic) NSString * userScopeType;

/**
The action associated with this message. For example, if the price of a product changes, the verb could be "Increased" or "Decreased". If the product is no longer available, the verb could be "Invalidated". System-supplied and read-only.
*/
@property(nonatomic) NSString * verb;

@end
