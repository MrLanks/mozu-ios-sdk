
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
#import "MOZUProductType.h"
#import "MOZUProductTypeCollection.h"


@interface MOZUProductTypeClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of product types according to any specified filter criteria and sort options.
@param filter A set of filter expressions representing the search parameters for a query: eq=equals, ne=not equals, gt=greater than, lt = less than or equals, gt = greater than or equals, lt = less than or equals, sw = starts with, or cont = contains. Optional.
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy 
@param startIndex 
*/

+ (MOZUClient *)clientForGetProductTypesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields;

/**
Retrieves the details of the product type specified in the request.
@param productTypeId Identifier of the product type.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetProductTypeOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new product type based on the information supplied in the request.
@param body A product type is like a product template.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForAddProductTypeOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductType *)body responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more properties of a product type.
@param body A product type is like a product template.
@param productTypeId Identifier of the product type.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForUpdateProductTypeOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUProductType *)body productTypeId:(NSInteger)productTypeId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the product type by providing the product type ID.
@param productTypeId Identifier of the product type.
*/

+ (MOZUClient *)clientForDeleteProductTypeOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId;



@end