/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUCommreceOrdersExtendedPropertyURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getExtendedProperties
@param orderId Unique identifier of the order.
@param draft If true, retrieve the draft version of the order, which might include uncommitted changes to the order or its components.
*/
+ (MOZUURLComponents *)URLComponentsForGetExtendedPropertiesOperationWithOrderId:(NSString *)orderId draft:(NSNumber *)draft;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addExtendedProperties
@param orderId Unique identifier of the order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version Determines whether or not to check versioning of items for concurrency purposes.
*/
+ (MOZUURLComponents *)URLComponentsForAddExtendedPropertiesOperationWithOrderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateExtendedProperty
@param orderId Unique identifier of the order.
@param key The extended property key.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version Determines whether or not to check versioning of items for concurrency purposes.
@param upsert Inserts and updates an extended property.
        
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateExtendedPropertyOperationWithOrderId:(NSString *)orderId key:(NSString *)key updateMode:(NSString *)updateMode version:(NSString *)version upsert:(NSNumber *)upsert responseFields:(NSString *)responseFields;

/**
Resource Url Components for updateExtendedProperties
@param orderId Unique identifier of the order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version Determines whether or not to check versioning of items for concurrency purposes.
@param upsert Inserts and updates the extended property.
        
*/
+ (MOZUURLComponents *)URLComponentsForUpdateExtendedPropertiesOperationWithOrderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version upsert:(NSNumber *)upsert;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteExtendedProperty
@param orderId Unique identifier of the order.
@param key 
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version Determines whether or not to check versioning of items for concurrency purposes.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteExtendedPropertyOperationWithOrderId:(NSString *)orderId key:(NSString *)key updateMode:(NSString *)updateMode version:(NSString *)version;

/**
Resource Url Components for deleteExtendedProperties
@param orderId Unique identifier of the order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version Determines whether or not to check versioning of items for concurrency purposes.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteExtendedPropertiesOperationWithOrderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version;



@end