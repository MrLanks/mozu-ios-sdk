
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
#import "MOZUAdminDiscount.h"
#import "MOZUAuditInfo.h"
#import "MOZUAdminBundledProduct.h"
#import "MOZUProductLocalizedContent.h"
#import "MOZUProductExtra.h"
#import "MOZUAdminProductInventoryInfo.h"
#import "MOZUAdminProductOption.h"
#import "MOZUMeasurement.h"
#import "MOZUAdminProductPrice.h"
#import "MOZUAdminProductPricingBehaviorInfo.h"
#import "MOZUProductInCatalogInfo.h"
#import "MOZUAdminProductProperty.h"
#import "MOZUProductPublishingInfo.h"
#import "MOZUProductLocalizedSEOContent.h"
#import "MOZUProductSupplierInfo.h"
#import "MOZUProductVariationOption.h"



@protocol MOZUAdminProduct
@end


/**
	The properties of a product, referenced and used by carts, orders, wish lists, and returns.
*/
@interface MOZUAdminProduct : JSONModel<MOZUAdminProduct>

/**
Product code defined by the tenant administrator to use as a base prefix when generating product codes for any variations of this product.
*/
@property(nonatomic) NSString * baseProductCode;

/**
List of supported types of fulfillment  for the product or variation. The types include direct ship, in-store pickup, or both. 
*/
@property(nonatomic) NSArray *fulfillmentTypesSupported;

/**
If true, the product has configurable options. This option means that a product is not purchasable until the shopper selects options that resolve into a product variation. Configurable options for a product are the choices a shopper makes when ordering a product. Size and color are configurable options. System-supplied and read-only.
*/
@property(nonatomic) BOOL hasConfigurableOptions;

/**
If true, this product has standalone options that a shopper can select without configuring a defined product variations. System-supplied and read only.
*/
@property(nonatomic) BOOL hasStandAloneOptions;

/**
Indicates if the product must be shipped alone in a container. This is used for products and products within a bundle. If true, this product cannot be shipped in a package with other items and must ship in a package by itself.
*/
@property(nonatomic) NSNumber * isPackagedStandAlone;

/**
Indicates if the product in a cart, order, or wish list is purchased on a recurring schedule. If true, the item can be purchased or fulfilled at regular intervals, such as a monthly billing cycle. For example, digital or physical product subscriptions are recurring cart items. This property is not used at this time and is reserved for future functionality.
*/
@property(nonatomic) NSNumber * isRecurring;

/**
Indicates if the item is subject to taxation, used by products, options, extras, cart and order items, line items, and wish lists. If true, the entity is subject to tax based on the relevant tax rate and rules.
*/
@property(nonatomic) NSNumber * isTaxable;

/**
If true, this product is valid for the assigned product type.
*/
@property(nonatomic) NSNumber * isValidForProductType;

/**
If true, this configured product represents a product variation defined with configurable options. System-supplied and read only.
*/
@property(nonatomic) BOOL isVariation;

/**
The unique identifier of the master catalog associated with the entity.
*/
@property(nonatomic) NSNumber * masterCatalogId;

/**
Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
@property(nonatomic) NSString * productCode;

/**
Integer that represents the sequential order of the product.
*/
@property(nonatomic) NSNumber * productSequence;

/**
Unique identifier of the product type assigned for this product. Tenant administrators can only define one product type per product.
*/
@property(nonatomic) NSNumber * productTypeId;

/**
The usage type that applies to this product, which is Standard (a single product without configurable options), Configurable (a product that includes configurable option attributes), Bundle (a collection of products sold as a single entity), or Component (an invididual product that represents a component in a bundle).
*/
@property(nonatomic) NSString * productUsage;

/**
Identifier of the shipping class.
*/
@property(nonatomic) NSNumber * shippingClassId;

/**
If the product must be packaged separately, the type of standalone package to use.
*/
@property(nonatomic) NSString * standAlonePackageType;

/**
The universal product code (UPC) is the barcode defined for the product. The UPC is unique across all sales channels. 
*/
@property(nonatomic) NSString * upc;

/**
System-generated key that represents the attribute values that uniquely identify a specific product variation.
*/
@property(nonatomic) NSString * variationKey;

/**
List of discounts available per configured conditions and criteria. These discounts are associated with products, orders, and shipping costs. Shoppers can view these discounts per order, per product in an order, or for their shipping depending on the configuration.
*/
@property(nonatomic) NSArray<MOZUAdminDiscount> *applicableDiscounts;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

/**
Properties of a collection of component products that make up a single product bundle with its own product code. Tenants can define product bundles for any product type that supports the Bundle product usage.
*/
@property(nonatomic) NSArray<MOZUAdminBundledProduct> *bundledProducts;

@property(nonatomic) MOZUProductLocalizedContent *content;

/**
List of extra product attributes defined for this product. For example, monogram could be a possible extra for a shirt product.
*/
@property(nonatomic) NSArray<MOZUProductExtra> *extras;

/**
Properties and data of inventory information for configured and bundled products. If product stock is managed, the data specifies out of stock behavior.
*/
@property(nonatomic) MOZUAdminProductInventoryInfo *inventoryInfo;

/**
List of option attributes configured for an object. These values are associated and used by products, product bundles, and product types.
*/
@property(nonatomic) NSArray<MOZUAdminProductOption> *options;

/**
Height of a package or bundle package in imperial units of feet and inches.
*/
@property(nonatomic) MOZUMeasurement *packageHeight;

/**
Length of a package or bundle package in imperial units of feet and inches.
*/
@property(nonatomic) MOZUMeasurement *packageLength;

/**
Weight of a package or bundle package in imperial units of pounds and ounces.
*/
@property(nonatomic) MOZUMeasurement *packageWeight;

/**
Width of a package or bundle package in imperial units of feet and inches.
*/
@property(nonatomic) MOZUMeasurement *packageWidth;

/**
Unit price that the client intends to sell the product if no sale price is set.
*/
@property(nonatomic) MOZUAdminProductPrice *price;

/**
Properties that describe the behavior the system uses when determining the price of products.
*/
@property(nonatomic) MOZUAdminProductPricingBehaviorInfo *pricingBehavior;

/**
Properties defined for a product as they appear in its associated catalogs.
*/
@property(nonatomic) NSArray<MOZUProductInCatalogInfo> *productInCatalogs;

/**
Collection of property attributes defined for the object. Properties are associated to all objects within Mozu, including documents, products, and product types.
*/
@property(nonatomic) NSArray<MOZUAdminProductProperty> *properties;

/**
Properties of the product publishing settings for the associated product.
*/
@property(nonatomic) MOZUProductPublishingInfo *publishingInfo;

/**
The search engine optimized content defined for products or products associated with a catalog. If no SEO content is specified in the request for products associated with a catalog, this catalog uses the SEO content defined in the master catalog. To override the SEO content for this catalog, the `IsSEOContentOverridden `flag must be set to "true".
*/
@property(nonatomic) MOZUProductLocalizedSEOContent *seoContent;

/**
Supplier-defined properties assigned for the product.
*/
@property(nonatomic) MOZUProductSupplierInfo *supplierInfo;

/**
The list of product variation configurations defined for this product based on its available product option attributes.
*/
@property(nonatomic) NSArray<MOZUProductVariationOption> *variationOptions;

@end
