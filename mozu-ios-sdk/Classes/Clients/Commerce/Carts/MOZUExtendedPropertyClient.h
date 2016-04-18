
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
#import "MOZUExtendedProperty.h"


@interface MOZUExtendedPropertyClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of cart extended properties specified in the request.
*/

+ (MOZUClient *)clientForGetExtendedPropertiesOperation;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds one or more specified extended properties to the carts extended properties collection.
@param body Mozu.CommerceRuntime.Contracts.Commerce.ExtendedProperty ApiType DOCUMENT_HERE 
*/

+ (MOZUClient *)clientForAddExtendedPropertiesOperationWithBody:(NSArray<MOZUExtendedProperty> *)body;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more details of the extended property specified in the request.
@param body Mozu.CommerceRuntime.Contracts.Commerce.ExtendedProperty ApiType DOCUMENT_HERE 
@param key Key used for metadata defined for objects, including extensible attributes, custom attributes associated with a shipping provider, and search synonyms definitions. This content may be user-defined depending on the object and usage.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
@param upsert Any set of key value pairs to be stored in the extended properties of a cart.
*/

+ (MOZUClient *)clientForUpdateExtendedPropertyOperationWithBody:(MOZUExtendedProperty *)body key:(NSString *)key upsert:(NSNumber *)upsert responseFields:(NSString *)responseFields;

/**
Updates one or more details of the extended properties specified in the request.
@param body Mozu.CommerceRuntime.Contracts.Commerce.ExtendedProperty ApiType DOCUMENT_HERE 
@param upsert Any set of key value pairs to be stored in the extended properties of a cart.
*/

+ (MOZUClient *)clientForUpdateExtendedPropertiesOperationWithBody:(NSArray<MOZUExtendedProperty> *)body upsert:(NSNumber *)upsert;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the extended properties cart extended properties collection.
@param body 
*/

+ (MOZUClient *)clientForDeleteExtendedPropertiesOperationWithBody:(NSArray *)body;

/**
Deletes a specific extended property from the cart extended property collection.
@param key 
*/

+ (MOZUClient *)clientForDeleteExtendedPropertyOperationWithKey:(NSString *)key;



@end