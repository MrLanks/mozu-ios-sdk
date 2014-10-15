
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
#import "MOZUAdminFacet.h"
#import "MOZUFacetSet.h"


@interface MOZUAdminFacetClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a facet specified by its unique identifier and displays its properties.
@param facetId Unique identifier of the facet to retrieve.
@param responseFields Use this field to include those fields which are not included by default.
@param validate Validates that the product category associated with a facet is active. System-supplied and read only.
*/

+ (MOZUClient *)clientForGetFacetOperationWithFacetId:(NSInteger)facetId validate:(NSNumber *)validate responseFields:(NSString *)responseFields;

/**
Retrieves a list of the facets defined for the specified category.
@param categoryId Unique identifier of the category associated with the facets to retrieve.
@param includeAvailable If true, returns a list of the attributes and categories associated with a product type that have not been defined as a facet for the category.
@param responseFields Use this field to include those fields which are not included by default.
@param validate Validates that the product category associated with a facet is active. System-supplied and read only.
*/

+ (MOZUClient *)clientForGetFacetCategoryListOperationWithCategoryId:(NSInteger)categoryId includeAvailable:(NSNumber *)includeAvailable validate:(NSNumber *)validate responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new category, price, or attribute facet. Define the category or attribute source to use for the facet values.
@param body Properties of the new facet to create. You must specify the source, type, and category.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForAddFacetOperationWithBody:(MOZUAdminFacet *)body responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Modifies one or more properties of a defined facet.
@param body Properties of the defined facet to modify.
@param facetId Unique identifier of the facet to modify.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForUpdateFacetOperationWithBody:(MOZUAdminFacet *)body facetId:(NSInteger)facetId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the facet specified by its unique identifier.
@param facetId Unique identifier of the facet to delete.
*/

+ (MOZUClient *)clientForDeleteFacetByIdOperationWithFacetId:(NSInteger)facetId;



@end