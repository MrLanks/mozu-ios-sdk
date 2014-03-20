/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUAdminProductsLocationInventoryURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getLocationInventories
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
*/
+ (MOZUURLComponents *)URLComponentsForGetLocationInventoriesOperationWithProductCode:(NSString *)productCode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter;

/**
Resource Url Components for getLocationInventory
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param locationCode User-defined code that identifies the location.
*/
+ (MOZUURLComponents *)URLComponentsForGetLocationInventoryOperationWithProductCode:(NSString *)productCode locationCode:(NSString *)locationCode;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addLocationInventory
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
+ (MOZUURLComponents *)URLComponentsForAddLocationInventoryOperationWithProductCode:(NSString *)productCode;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateLocationInventory
@param productCode The product code of the product for which to update active stock on hand inventory at a specified location.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateLocationInventoryOperationWithProductCode:(NSString *)productCode;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteLocationInventory
@param productCode The product code for which to delete a location's inventory.
@param locationCode The code that identifies the location for which to delete product inventory.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteLocationInventoryOperationWithProductCode:(NSString *)productCode locationCode:(NSString *)locationCode;



@end