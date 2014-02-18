
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

#import "MOZUAuthTicket.h"
#import "MOZUAttribute.h"
#import "MOZUAttributeCollection.h"


@interface MOZUAttributeResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a paged list of attributes according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param startIndex 
*/

-(void)attributesWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttributeCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves the details of the specified product attribute.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/

-(void)attributeWithDataViewMode:(MOZUDataViewMode)dataViewMode attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttribute* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new attribute to describe one aspect of a product such as color or size, based on its defined product type. The attribute name, attribute type, input type, and data type are required.
@param attribute Properties of the new product attribute to create.
*/

-(void)addAttributeWithDataViewMode:(MOZUDataViewMode)dataViewMode attribute:(MOZUattribute*)attribute userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttribute* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates an existing attribute with attribute properties to set.
@param attribute Any properties of the attribute that to update.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/

-(void)updateAttributeWithDataViewMode:(MOZUDataViewMode)dataViewMode attribute:(MOZUattribute*)attribute attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttribute* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a defined product attribute. You cannot delete an attribute assigned a value for a product.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/

-(void)deleteAttributeWithDataViewMode:(MOZUDataViewMode)dataViewMode attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end