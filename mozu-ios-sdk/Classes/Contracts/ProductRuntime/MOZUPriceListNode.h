
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



@protocol MOZUPriceListNode
@end


/**
	Mozu.ProductRuntime.Contracts.PriceListNode ApiType DOCUMENT_HERE 
*/
@interface MOZUPriceListNode : JSONModel<MOZUPriceListNode>

/**
Mozu.ProductRuntime.Contracts.PriceListNode priceListCode ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSString * priceListCode;

/**
Mozu.ProductRuntime.Contracts.PriceListNode priceListId ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSInteger priceListId;

/**
Mozu.ProductRuntime.Contracts.PriceListNode priceListLevel ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSInteger priceListLevel;

/**
Mozu.ProductRuntime.Contracts.PriceListNode parentPriceListId ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSNumber * parentPriceListId;

@end

