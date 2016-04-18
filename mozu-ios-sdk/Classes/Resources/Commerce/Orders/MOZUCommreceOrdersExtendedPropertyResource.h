
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
#import "MOZUAPIContext.h"

#import "MOZUExtendedProperty.h"


@interface MOZUCommreceOrdersExtendedPropertyResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the extended property string associated with the order. 
@param draft If true, retrieve the draft version of the order, which might include uncommitted changes to the order or its components.
@param orderId Unique identifier of the order.
*/

- (void)extendedPropertiesWithOrderId:(NSString *)orderId draft:(NSNumber *)draft completionHandler:(void(^)(NSArray<MOZUExtendedProperty> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Create an extended property for the order.
@param body Mozu.CommerceRuntime.Contracts.Commerce.ExtendedProperty ApiType DOCUMENT_HERE 
@param orderId Unique identifier of the order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version Determines whether or not to check versioning of items for concurrency purposes.
*/

- (void)addExtendedPropertiesWithBody:(NSArray<MOZUExtendedProperty> *)body orderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version completionHandler:(void(^)(NSArray<MOZUExtendedProperty> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one ore more extended properties.
@param body Mozu.CommerceRuntime.Contracts.Commerce.ExtendedProperty ApiType DOCUMENT_HERE 
@param key The extended property key.
@param orderId Unique identifier of the order.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param upsert Inserts and updates an extended property.
        
@param version Determines whether or not to check versioning of items for concurrency purposes.
*/

- (void)updateExtendedPropertyWithBody:(MOZUExtendedProperty *)body orderId:(NSString *)orderId key:(NSString *)key updateMode:(NSString *)updateMode version:(NSString *)version upsert:(NSNumber *)upsert responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUExtendedProperty *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Updates one or more extended properties.
@param body Mozu.CommerceRuntime.Contracts.Commerce.ExtendedProperty ApiType DOCUMENT_HERE 
@param orderId Unique identifier of the order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param upsert Inserts and updates the extended property.
        
@param version Determines whether or not to check versioning of items for concurrency purposes.
*/

- (void)updateExtendedPropertiesWithBody:(NSArray<MOZUExtendedProperty> *)body orderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version upsert:(NSNumber *)upsert completionHandler:(void(^)(NSArray<MOZUExtendedProperty> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes one or more extended properties.
@param key 
@param orderId Unique identifier of the order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version Determines whether or not to check versioning of items for concurrency purposes.
*/

- (void)deleteExtendedPropertyWithOrderId:(NSString *)orderId key:(NSString *)key updateMode:(NSString *)updateMode version:(NSString *)version completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Deletes the extended property associated with the order. 
@param body 
@param orderId Unique identifier of the order.
@param updateMode Specifies whether to update the original order, update the order in draft mode, or update the order in draft mode and then commit the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version Determines whether or not to check versioning of items for concurrency purposes.
*/

- (void)deleteExtendedPropertiesWithBody:(NSArray *)body orderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end