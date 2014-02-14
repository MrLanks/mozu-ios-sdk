
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
#import "MOZUTransaction.h"



@protocol MOZUVisit
@end


/**
	Properties of a customer visit to one of a company's sites.
*/
@interface MOZUVisit : JSONModel<MOZUVisit>

/**
Unique identifier of the customer account associated with the visit.
*/
@property(nonatomic) NSNumber* accountId;

/**
If the customer visit is made online, the location code associated with the website visited.
*/
@property(nonatomic) NSString* browserLocationCode;

/**
The date and time of the customer visit.
*/
@property(nonatomic) NSDate* date;

/**
Unique identifier of the customer visit.
*/
@property(nonatomic) NSString* id;

/**
If the customer visit is made in person and associated with a defined location, the code that identifies the location.
*/
@property(nonatomic) NSString* locationCode;

/**
The type of customer visit, which is "Website," "Store," "Call," or "Unknown."
*/
@property(nonatomic) NSString* type;

/**
The user ID of the customer who visited the site.
*/
@property(nonatomic) NSString* userId;

/**
The HTTP_Referrer that initiatied the visit started. If the shopper was not referred from another source, this value is null.
*/
@property(nonatomic) NSString* webReferrer;

/**
If the visit was made online, the identifier of the web session associated with the visit, which is system-supplied and read only.
*/
@property(nonatomic) NSString* webSessionId;

/**
Unique identifier of the site.
*/
@property(nonatomic) NSNumber* webSiteId;

/**
The user agent string for the browser.
*/
@property(nonatomic) NSString* webUserAgent;

/**
Array list of transactions the customer performed during the visit. A customer can perform multiple transactions in a single visit, or the visit can have no associated transactions.
*/
@property(nonatomic) NSArray<MOZUTransaction>* transactions;

@end
