
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
#import "MOZUCurrency.h"



@protocol MOZUCurrencyCollection
@end


/**
	The paged collection of currency codes.
*/
@interface MOZUCurrencyCollection : JSONModel<MOZUCurrencyCollection>

/**
The number of the resource entity items listed in the query collection. Signed 64-bit (8-byte) integer. System-supplied and read-only.
*/
@property(nonatomic) NSInteger totalCount;

/**
Container for an array list of properties in a collection.
*/
@property(nonatomic) NSArray<MOZUCurrency> *items;

@end

