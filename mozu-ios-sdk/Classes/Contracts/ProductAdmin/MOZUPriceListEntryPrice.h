
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



@protocol MOZUPriceListEntryPrice
@end


/**
	Mozu.ProductAdmin.Contracts.PriceListEntryPrice ApiType DOCUMENT_HERE 
*/
@interface MOZUPriceListEntryPrice : JSONModel<MOZUPriceListEntryPrice>

/**
Mozu.ProductAdmin.Contracts.PriceListEntryPrice listPrice ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSNumber * listPrice;

/**
Mozu.ProductAdmin.Contracts.PriceListEntryPrice listPriceMode ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSString * listPriceMode;

/**
Mozu.ProductAdmin.Contracts.PriceListEntryPrice minQty ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSInteger minQty;

/**
The set sale price for a product consisting of a price with a discount already applied.
*/
@property(nonatomic) NSNumber * salePrice;

/**
Mozu.ProductAdmin.Contracts.PriceListEntryPrice salePriceMode ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSString * salePriceMode;

@end
