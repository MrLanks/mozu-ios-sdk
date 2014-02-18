
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
#import "MOZUAdminCategory.h"
#import "MOZUAdminCategoryPagedCollection.h"
#import "MOZUAdminCategoryCollection.h"


@interface MOZUAdminCategoryResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

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

-(void)categoriesWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminCategoryPagedCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves the details of a single category.
@param categoryId Unique identifier of the category to retrieve.
*/

-(void)categoryWithDataViewMode:(MOZUDataViewMode)dataViewMode categoryId:(NSInteger)categoryId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminCategory* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves the subcategories of a category. This is a list of subcategories at the same level (siblings). Use a list of siblings, for example, to display the categories in a horizontal list.
@param categoryId Unique identifier of the category whose subcategories are retrieved.
*/

-(void)childCategoriesWithDataViewMode:(MOZUDataViewMode)dataViewMode categoryId:(NSInteger)categoryId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminCategoryCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds a new category to the site's category hierarchy. Specify a ParentCategoryID to determine where to locate the category in the hierarchy. If a ParentCategoryID is not specified, the new category becomes a top-level category.
@param category Properties of the new category. Required properties: ParentCategoryID and Content.Name.
*/

-(void)addCategoryWithDataViewMode:(MOZUDataViewMode)dataViewMode category:(MOZUcategory*)category userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminCategory* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Modifies a category such as moving it to another location in the category tree, or changing whether it is visible on the storefront. This PUT replaces the existing resource, so be sure to include all the information to maintain for the category.
@param category Properties of the category to modify.
@param cascadeVisibility If true, when changing the display option for the category, change it for all subcategories also. Default: False.
@param categoryId Unique identifier of the category to modify.
*/

-(void)updateCategoryWithDataViewMode:(MOZUDataViewMode)dataViewMode category:(MOZUcategory*)category categoryId:(NSInteger)categoryId cascadeVisibility:(NSNumber*)cascadeVisibility userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAdminCategory* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the category specified by its category ID.
@param cascadeDelete If true, any subcategories of a category are deleted when this category is deleted. Default: False.
@param categoryId Unique identifier of the category to delete.
*/

-(void)deleteCategoryByIdWithDataViewMode:(MOZUDataViewMode)dataViewMode categoryId:(NSInteger)categoryId cascadeDelete:(NSNumber*)cascadeDelete userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end