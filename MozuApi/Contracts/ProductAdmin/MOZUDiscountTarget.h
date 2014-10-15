
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
#import "MOZUTargetedCategory.h"
#import "MOZUTargetedProduct.h"
#import "MOZUTargetedShippingMethod.h"
#import "MOZUTargetedShippingZone.h"



@protocol MOZUDiscountTarget
@end


/**
	Properties of the target to which the discount applies, such as the type of discount and which products, categories, or shipping methods are eligible for the discount and the properties of this discount target.
*/
@interface MOZUDiscountTarget : JSONModel<MOZUDiscountTarget>

/**
If true, the target discount applies to all products sold on the site, regardless of product category.
*/
@property(nonatomic) NSNumber * includeAllProducts;

/**
When a condition is specified, this property limits the number of items that are targeted for each discount redemption with an order. If multiple redemptions are allowed for each order then multiples of this value are allowed in multiples of the associated condition. If no condition is specified, then this value is not used. If null and condition exists, then defaults to 1.
*/
@property(nonatomic) NSNumber * maximumQuantityPerRedemption;

/**
Properties of the object to which this discount is targeted, which can be Product or Shipping. If the discount type is Product, the target properties describe the product or product categories to which the discount applies. If the discount type is Shipping, the target properties describe the shipping methods eligible for the discount.
*/
@property(nonatomic) NSString * type;

/**
The product categories to which the discount can apply. When a discount applies to a category, all products in the category are eligible for the discount.
*/
@property(nonatomic) NSArray<MOZUTargetedCategory> *categories;

/**
Array list of categories to exclude for this discount.
*/
@property(nonatomic) NSArray<MOZUTargetedCategory> *excludedCategories;

/**
Array list of products to exclude for this discount.
*/
@property(nonatomic) NSArray<MOZUTargetedProduct> *excludedProducts;

/**
List of  product codes that represent the products to which the discount can apply.
*/
@property(nonatomic) NSArray<MOZUTargetedProduct> *products;

/**
The list of shipping method codes that represents the shipping service types to which the discount can apply.
*/
@property(nonatomic) NSArray<MOZUTargetedShippingMethod> *shippingMethods;

@property(nonatomic) NSArray<MOZUTargetedShippingZone> *shippingZones;

@end

