
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "MOZUReturn.h"



@protocol MOZUReturnCollection
@end


/**
	List of returns and the details of each return in the list.
*/
@interface MOZUReturnCollection : JSONModel<MOZUReturnCollection>

/**
The number of pages returned based on the startIndex and pageSize values specified. This value is system-supplied and read-only.
*/
@property(nonatomic) longpageCount;

/**
The number of results to display on each page when creating paged results from a query. The maximum value is 200.
*/
@property(nonatomic) NSIntegerpageSize;

/**
When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/
@property(nonatomic) NSIntegerstartIndex;

/**
The number of results listed in the query collection, represented by a signed 64-bit (8-byte) integer. This value is system-supplied and read-only.
*/
@property(nonatomic) longtotalCount;

/**
An array list of objects in the returned collection.
*/
@property(nonatomic) NSArray<MOZUReturn> *items;

@end

