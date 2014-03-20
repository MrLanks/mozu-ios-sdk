
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
#import "MOZUAdminCategory.h"
#import "MOZUAdminCategoryPagedCollection.h"
#import "MOZUAdminCategoryCollection.h"


@interface MOZUAdminCategoryClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of categories according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. You can filter product category search results by any of its properties, including its position in the category hierarchy. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param startIndex 
*/

+ (MOZUClient *)clientForGetCategoriesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket *)userClaims;

/**
Retrieves the details of a single category.
@param categoryId Unique identifier of the category to retrieve.
*/

+ (MOZUClient *)clientForGetCategoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode categoryId:(NSInteger)categoryId userClaims:(MOZUUserAuthTicket *)userClaims;

/**
Retrieves the list of subcategories within a category.
@param categoryId Unique identifier of the category for which to retrieve subcategories.
*/

+ (MOZUClient *)clientForGetChildCategoriesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode categoryId:(NSInteger)categoryId userClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds a new category to the site's category hierarchy. Specify a ParentCategoryID to determine where to place the category in the hierarchy. If no ParentCategoryID is specified, the new category is a top-level category.
@param body Properties of the new category to create. You must specify a name and parent category if you want to create it as a subcategory.
*/

+ (MOZUClient *)clientForAddCategoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminCategory *)body userClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Update the properties of a defined category or move it to another location in the category hierarchy. Because this operation replaces the defined resource,include all the information to maintain for the category in the request.
@param body Properties of the category to modify.
@param cascadeVisibility If true, when changing the display option for the category, change it for all subcategories also. Default: False.
@param categoryId Unique identifier of the category to modify.
*/

+ (MOZUClient *)clientForUpdateCategoryOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminCategory *)body categoryId:(NSInteger)categoryId cascadeVisibility:(NSNumber *)cascadeVisibility userClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the category specified by its category ID.
@param cascadeDelete If true, also delete all subcategories associated with the specified category.
@param categoryId Unique identifier of the category to delete.
*/

+ (MOZUClient *)clientForDeleteCategoryByIdOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode categoryId:(NSInteger)categoryId cascadeDelete:(NSNumber *)cascadeDelete userClaims:(MOZUUserAuthTicket *)userClaims;



@end