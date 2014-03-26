
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
#import "MOZUSubscribingSite.h"



@protocol MOZUSubscription
@end


/**
	The list of properties pertaining to a subscription. A subscription is an event push service that a tenant or a third party developer can subscribe to for timely notifications about when an order, product, discount, category is created, read, updated, or deleted.
*/
@interface MOZUSubscription : JSONModel<MOZUSubscription>

@property(nonatomic) NSString * apiVersion;

/**
Unique identifier of the application subscribing to the event notification.
*/
@property(nonatomic) NSString * appId;

/**
If true, the endpoint used to deliver event notifications has been confirmed.
*/
@property(nonatomic) NSNumber * confirmed;

/**
The type of content used in the event notification, such as "JSON" or "XML".
*/
@property(nonatomic) NSString * contentType;

/**
Unique identifier of the user created the resource entity. System-supplied and read-only.
*/
@property(nonatomic) NSString * createBy;

/**
Date and time when the entity was created. UTC Date/Time.
*/
@property(nonatomic) NSDate * createDate;

@property(nonatomic) NSString * endpoint;

/**
Identifier of the entity.
*/
@property(nonatomic) NSString * id;

@property(nonatomic) NSNumber * isActive;

@property(nonatomic) NSNumber * noCallback;

/**
The method used to deliver the subscription notification, such as "HTTP".
*/
@property(nonatomic) NSString * notificationDeliveryType;

/**
List of the types of event associated with this subscription, such as "product.created" or "category.deleted".
*/
@property(nonatomic) NSArray *topics;

/**
Unique identifier of the entity who updated the resource property most recently. System-supplied and read-only.
*/
@property(nonatomic) NSString * updateBy;

/**
Date and time when the entity was last updated. UTC Date/Time.
*/
@property(nonatomic) NSDate * updateDate;

/**
The list of sites requesting subscription push or pull.
*/
@property(nonatomic) NSArray<MOZUSubscribingSite> *subscribingSites;

@end

