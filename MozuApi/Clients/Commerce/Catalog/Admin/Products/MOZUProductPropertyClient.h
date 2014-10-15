
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
#import "MOZUAdminProductProperty.h"
#import "MOZUProductPropertyValueLocalizedContent.h"


@interface MOZUProductPropertyClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of the property attributes configured for the product specified in the request.
@param productCode 
*/

+ (MOZUClient *)clientForGetPropertiesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode;

/**

@param attributeFQN 
@param productCode 
@param value 
*/

+ (MOZUClient *)clientForGetPropertyValueLocalizedContentsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value;

/**

@param attributeFQN 
@param localeCode Language used for the entity. Currently, only "en-US" is supported.
@param productCode 
@param responseFields Use this field to include those fields which are not included by default.
@param value 
*/

+ (MOZUClient *)clientForGetPropertyValueLocalizedContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields;

/**
Retrieves the details of a property attribute configuration for the product specified in the request.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetPropertyOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**

@param body Use this field to include those fields which are not included by default.
@param attributeFQN 
@param productCode 
@param responseFields Use this field to include those fields which are not included by default.
@param value 
*/

+ (MOZUClient *)clientForAddPropertyValueLocalizedContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductPropertyValueLocalizedContent *)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value responseFields:(NSString *)responseFields;

/**
Configures a property attribute for the product specified in the request.
@param body Properties of the property attribute to configure for a product.
@param productCode 
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForAddPropertyOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminProductProperty *)body productCode:(NSString *)productCode responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**

@param body 
@param attributeFQN 
@param productCode 
@param value 
*/

+ (MOZUClient *)clientForUpdatePropertyValueLocalizedContentsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductPropertyValueLocalizedContent> *)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value;

/**

@param body 
@param attributeFQN 
@param localeCode Language used for the entity. Currently, only "en-US" is supported.
@param productCode 
@param responseFields Use this field to include those fields which are not included by default.
@param value 
*/

+ (MOZUClient *)clientForUpdatePropertyValueLocalizedContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductPropertyValueLocalizedContent *)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields;

/**
Update one or more details of a property attribute configuration for the product specified in the request.
@param body Details of the property attribute to update for the product configuration.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode 
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForUpdatePropertyOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminProductProperty *)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the configuration of a property attribute for the product specified in the request.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode 
*/

+ (MOZUClient *)clientForDeletePropertyOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN;

/**

@param attributeFQN 
@param localeCode Language used for the entity. Currently, only "en-US" is supported.
@param productCode 
@param value 
*/

+ (MOZUClient *)clientForDeletePropertyValueLocalizedContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value localeCode:(NSString *)localeCode;



@end