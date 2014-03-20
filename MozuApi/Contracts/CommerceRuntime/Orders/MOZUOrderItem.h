
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
#import "MOZUAuditInfo.h"
#import "MOZUCommerceProduct.h"
#import "MOZUAppliedProductDiscount.h"
#import "MOZUShippingDiscount.h"
#import "MOZUCommerceUnitPrice.h"



@protocol MOZUOrderItem
@end


/**
	The details associated with a specific item in an order.
*/
@interface MOZUOrderItem : JSONModel<MOZUOrderItem>

/**
The subtotal of the order item including any applied discount calculations.
*/
@property(nonatomic) NSNumber *discountedTotal;

/**
Estimated amount of discounts applied to the item in the order, which is system-supplied and read-only.
*/
@property(nonatomic) NSNumber *discountTotal;

/**
Represents the total price of the order item extended to the shopper. This begins with the Unit Price, then uses any of the following prices if they are defined, in the following order: Override Amount, Sale Amount, List Amount.
*/
@property(nonatomic) NSNumber *extendedTotal;

/**
The total sum of all fees incurred for an item in an order.
*/
@property(nonatomic) NSNumber *feeTotal;

/**
Code that identifies the location used to fulfill this order item, whether via in-store pickup or direct shipment.
*/
@property(nonatomic) NSString *fulfillmentLocationCode;

/**
The method used to fulfill the item in the order, which is "PickUp" or "Ship".
*/
@property(nonatomic) NSString *fulfillmentMethod;

/**
Unique identifier of a specific item in an order.
*/
@property(nonatomic) NSString *id;

/**
If true, the item in the order can be purchased or fulfilled at regular intervals such as a monthly billing cycle or a digital or physical subscription. This property is reserved for future functionality and is system-supplied and read only.
*/
@property(nonatomic) NSNumber *isRecurring;

/**
If true, the entity is subject to tax based on the relevant tax rate.
*/
@property(nonatomic) NSNumber *isTaxable;

/**
The total amount of tax that applied to an item in an order.
*/
@property(nonatomic) NSNumber *itemTaxTotal;

/**
Language used for the entity. Currently, only "en-US" is supported.
*/
@property(nonatomic) NSString *localeCode;

/**
The unique identifier of the item when it was applied to a cart, prior to checkout, when the cart became an order.
*/
@property(nonatomic) NSString *originalCartItemId;

/**
The quantity of a specific item in an order.
*/
@property(nonatomic) NSIntegerquantity;

/**
The total amount of sales tax incurred for shipping charges associated with this item in a cart.
*/
@property(nonatomic) NSNumber *shippingTaxTotal;

/**
Total amount of shipping fees associated with the specified item in the order.
*/
@property(nonatomic) NSNumber *shippingTotal;

/**
Amount of the item in the order without sales tax, shipping costs, and other fees.
*/
@property(nonatomic) NSNumber *subtotal;

/**
The amount of the item in the order that is subject to tax. This amount typically represents the order item subtotal before applied discounts.
*/
@property(nonatomic) NSNumber *taxableTotal;

/**
The total monetary sum of a specific item in an order.
*/
@property(nonatomic) NSNumber *total;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

/**
The product properties of an item in an order.
*/
@property(nonatomic) MOZUCommerceProduct *product;

/**
List of product discounts that apply to the item in the order.
*/
@property(nonatomic) NSArray<MOZUAppliedProductDiscount> *productDiscounts;

/**
List of shipping discounts that apply to the item in the order.
*/
@property(nonatomic) NSArray<MOZUShippingDiscount> *shippingDiscounts;

/**
Properties of the unit price associated with the order item.
*/
@property(nonatomic) MOZUCommerceUnitPrice *unitPrice;

@end

