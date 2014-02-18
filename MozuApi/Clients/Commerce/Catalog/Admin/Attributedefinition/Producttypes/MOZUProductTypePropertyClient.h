
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
#import "MOZUAuthTicket.h"
#import "MOZUAttributeInProductType.h"


@interface MOZUProductTypePropertyClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of product property attributes defined for a product type.
@param productTypeId Identifier of the product type.
*/

+(MOZUClient*)clientForGetPropertiesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves a product property attribute definition for the specified product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type.
*/

+(MOZUClient*)clientForGetPropertyOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Assigns a property attribute to the specified product type, according to the information defined in the request.
@param attributeInProductType Properties of the property attribute to define for the specified product type.
@param productTypeId Identifier of the product type.
*/

+(MOZUClient*)clientForAddPropertyOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode attributeInProductType:(MOZUattributeInProductType*)attributeInProductType productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the definition of a property attribute for the specified product type.
@param attributeInProductType Properties of the property attribute to define for the product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type.
*/

+(MOZUClient*)clientForUpdatePropertyOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode attributeInProductType:(MOZUattributeInProductType*)attributeInProductType productTypeId:(NSInteger)productTypeId attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes a property attribute previously defined for the specified product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type.
*/

+(MOZUClient*)clientForDeletePropertyOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString*)attributeFQN userClaims:(MOZUUserAuthTicket*)userClaims;



@end