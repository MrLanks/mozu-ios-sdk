
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
#import "MOZURuntimeAppliedDiscount.h"



@protocol MOZURuntimeProductPrice
@end


/**
	The price of the product in the specified currency code (USD). This price can either be the sale price or the price for which the merchang intends to sell the product.
*/
@interface MOZURuntimeProductPrice : JSONModel<MOZURuntimeProductPrice>

/**
The list price of the product in the catalog.
*/
@property(nonatomic) NSNumber * catalogListPrice;

/**
The sale price defined for the product in the catalog.
*/
@property(nonatomic) NSNumber * catalogSalePrice;

/**
The credit value of the product or bundled product. When the `goodsType `is `DigitalCredit`, this value is populated to indicate the value of the credit. This is used to create store credit in the fulfillment of gift cards.
*/
@property(nonatomic) NSNumber * creditValue;

/**
The priceList that was applied to this product
*/
@property(nonatomic) NSString * effectivePricelistCode;

/**
The manufacturer's suggested retail price for the product. This content may be defined by the supplier.
*/
@property(nonatomic) NSNumber * msrp;

/**
The price the merchant intends to charge for the product.
*/
@property(nonatomic) NSNumber * price;

/**
The specific PriceListCode that was applied (includes inheritence
*/
@property(nonatomic) NSString * priceListEntryCode;

/**
IF a PriceList Entry was applied to this price it will be (simple, bulk...)
*/
@property(nonatomic) NSString * priceListEntryMode;

/**
The price type that displays on the storefront website for the Price field, which is List, MAP, or CatalogSalePrice
*/
@property(nonatomic) NSString * priceType;

/**
The set sale price for a product consisting of a price with a discount already applied.
*/
@property(nonatomic) NSNumber * salePrice;

/**
The price type that displays on the storefront website for the Sale Price field, which is CatalogSalePrice, DiscountedList, or DiscountedCatalogSalePrice
*/
@property(nonatomic) NSString * salePriceType;

/**
Name of the discount added and applied to a shopping cart and order for a shopper's purchase. 
*/
@property(nonatomic) MOZURuntimeAppliedDiscount *discount;

@end

