
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
#import "MOZULocationUsage.h"



@protocol MOZULocationUsageCollection
@end


/**
	Properties of the location usage for direct ship, in-store pickup, or the store finder.
*/
@interface MOZULocationUsageCollection : JSONModel<MOZULocationUsageCollection>

/**
The number of results listed in the query collection, represented by a signed 64-bit (8-byte) integer. This value is system-supplied and read-only.
*/
@property(nonatomic) longtotalCount;

/**
An array list of objects in the returned collection.
*/
@property(nonatomic) NSArray<MOZULocationUsage> *items;

@end

