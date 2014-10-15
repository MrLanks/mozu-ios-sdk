
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
#import "MOZUAttributeInProductType.h"


@interface MOZUProductTypeOptionClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of option product attributes defined for the specified product type.
@param productTypeId Identifier of the product type to retrieve.
*/

+ (MOZUClient *)clientForGetOptionsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId;

/**
Retrieves the details of an option attribute defined for the specified product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId The identifier of the product type.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetOptionOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Assigns an option attribute to the product type based on the information supplied in the request.
@param body Properties of the option attribute to define for the specified product type.
@param productTypeId Identifier of the product type.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForAddOptionOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAttributeInProductType *)body productTypeId:(NSInteger)productTypeId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates an option attribute definition for the specified product type.
@param body Properties of the option product attribute to define for the specified product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForUpdateOptionOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAttributeInProductType *)body productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields;


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

+ (MOZUClient *)clientForDeleteOptionOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN;



@end