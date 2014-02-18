
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
#import "MOZUAttributeInProductType.h"


@interface MOZUProductTypeOptionResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of option product attributes defined for the specified product type.
@param productTypeId Identifier of the product type to retrieve.
*/

-(void)optionsWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUAttributeInProductType>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves the details of an option attribute defined for the specified product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId The identifier of the product type.
*/

-(void)optionWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttributeInProductType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Assigns an option attribute to the product type based on the information supplied in the request.
@param attributeInProductType Properties of the option attribute to define for the specified product type.
@param productTypeId Identifier of the product type.
*/

-(void)addOptionWithDataViewMode:(MOZUDataViewMode)dataViewMode attributeInProductType:(MOZUattributeInProductType*)attributeInProductType productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttributeInProductType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates an option attribute definition for the specified product type.
@param attributeInProductType Properties of the option product attribute to define for the specified product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type.
*/

-(void)updateOptionWithDataViewMode:(MOZUDataViewMode)dataViewMode attributeInProductType:(MOZUattributeInProductType*)attributeInProductType productTypeId:(NSInteger)productTypeId attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAttributeInProductType* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes an option attribute definition for the specified product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type.
*/

-(void)deleteOptionWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end