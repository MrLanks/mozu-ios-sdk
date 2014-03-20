
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
#import "MOZUDiscountCondition.h"
#import "MOZUDiscountLocalizedContent.h"
#import "MOZUDiscountTarget.h"



@protocol MOZUAdminDiscount
@end


/**
	Discount used to calculate SalePrice. Includes coupon code if applicable, amount of the discount, and discount savings. Discounts can be either an absolute price or a percentage off. The sale price beats any discounts.
*/
@interface MOZUAdminDiscount : JSONModel<MOZUAdminDiscount>

/**
The integer amount of the discount. For example, an entry of "10" could represent a discount of $10.00 or a discount of 10%, depending on the type.
*/
@property(nonatomic) NSNumber *amount;

/**
The type of discount amount, such as an amount or a percentage.
*/
@property(nonatomic) NSString *amountType;

/**
The number of times this discount has been redeemed.
*/
@property(nonatomic) NSNumber *currentRedemptionCount;

/**
If true, this discount does not apply to a line item product with a defined sale price. The default is false, which applies the discount to products with and without defined sale prices.
*/
@property(nonatomic) NSNumber *doesNotApplyToSalePrice;

/**
Unique identifier of the discount.
*/
@property(nonatomic) NSNumber *id;

@property(nonatomic) NSNumber *maximumUsesPerUser;

/**
The scope to which the discount applies, which is "Order" for order discounts or "LineItem" for individual product discounts.
*/
@property(nonatomic) NSString *scope;

/**
Current status of the product discount. Possible values are "Active", "Scheduled", or "Expired".
*/
@property(nonatomic) NSString *status;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

/**
List of conditions that must be met for the discount to apply.
*/
@property(nonatomic) MOZUDiscountCondition *conditions;

/**
Complex type that contains content for a language specified by LocaleCode.
*/
@property(nonatomic) MOZUDiscountLocalizedContent *content;

/**
Properties of the target object to which the discount applies, such as a product or an order.
*/
@property(nonatomic) MOZUDiscountTarget *target;

@end

