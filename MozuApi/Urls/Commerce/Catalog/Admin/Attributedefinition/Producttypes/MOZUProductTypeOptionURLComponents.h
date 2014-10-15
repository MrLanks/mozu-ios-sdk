/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUProductTypeOptionURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getOptions
@param productTypeId Identifier of the product type to retrieve.
*/
+ (MOZUURLComponents *)URLComponentsForGetOptionsOperationWithProductTypeId:(NSInteger)productTypeId;

/**
Resource Url Components for getOption
@param productTypeId The identifier of the product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetOptionOperationWithProductTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addOption
@param productTypeId Identifier of the product type.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForAddOptionOperationWithProductTypeId:(NSInteger)productTypeId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateOption
@param productTypeId Identifier of the product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateOptionOperationWithProductTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteOption
@param productTypeId Identifier of the product type.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteOptionOperationWithProductTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN;



@end