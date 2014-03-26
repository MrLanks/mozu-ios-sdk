/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUAttributeURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getAttributes
@param startIndex 
@param pageSize Used to create paged results from a query. Specifies the number of results to display on each page. Maximum: 200.
@param sortBy 
@param filter A set of filter expressions representing the search parameter syntax when filtering results of a query: eq=equals, ne=not equals, gt=greater than, lt = less than, ge = greater than or equals, le = less than or equals, sw = starts with, or cont = contains. <b>For example: filter=categoryId+eq+12</b>
*/
+ (MOZUURLComponents *)URLComponentsForGetAttributesOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter;

/**
Resource Url Components for getAttribute
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+ (MOZUURLComponents *)URLComponentsForGetAttributeOperationWithAttributeFQN:(NSString *)attributeFQN;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addAttribute
*/
+ (MOZUURLComponents *)URLComponentsForAddAttributeOperation;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateAttribute
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateAttributeOperationWithAttributeFQN:(NSString *)attributeFQN;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteAttribute
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteAttributeOperationWithAttributeFQN:(NSString *)attributeFQN;



@end