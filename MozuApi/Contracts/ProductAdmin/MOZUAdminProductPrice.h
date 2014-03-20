
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



@protocol MOZUAdminProductPrice
@end


/**
	The price of the product in the specified currency code (USD). This price can either be the sale price or the price for which the merchang intends to sell the product.
*/
@interface MOZUAdminProductPrice : JSONModel<MOZUAdminProductPrice>

/**
3-letter ISO 4217 standard global currency code. Currently, only "USD" (US Dollar) is supported.
*/
@property(nonatomic) NSString *isoCurrencyCode;

/**
The minimum advertised price a client can charge for the associated product, as determined by the supplier. Client administrators can override the minimum advertised price at the catalog level.
*/
@property(nonatomic) NSNumber *map;

/**
If the product has a supplier-defined minimum advertised price, the date and time after which the client can sell the product for less than the minimum advertised price.
*/
@property(nonatomic) NSDate *mapEndDate;

/**
If the product has a supplier-defined minimum advertised price, the date and time after which the client cannot sell the product for less than the minimum advertised price.
*/
@property(nonatomic) NSDate *mapStartDate;

/**
The manufacturer's suggested retail price, as defined by the supplier.
*/
@property(nonatomic) NSNumber *msrp;

/**
Price that the merchant intends to sell the product which is not necessarily the list price. This is the price the merchant intends to sell the product if no sale price is present.
*/
@property(nonatomic) NSNumber *price;

/**
Price of the product with a discount already applied which the merchant intends to sell the product.
*/
@property(nonatomic) NSNumber *salePrice;

@end

