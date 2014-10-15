
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
#import "MOZUAppliedDiscount.h"



@protocol MOZUAppliedLineItemShippingDiscount
@end


/**
	The value of the shipping discount for each line item.
*/
@interface MOZUAppliedLineItemShippingDiscount : JSONModel<MOZUAppliedLineItemShippingDiscount>

/**
The number of the line item that is used for this particular discount.
*/
@property(nonatomic) NSInteger discountQuantity;

/**
The impact of this discount for each discount quantity.
*/
@property(nonatomic) NSNumber * impactPerUnit;

@property(nonatomic) NSString * methodCode;

/**
This describes shipping discounts that apply to a line item in the order, if any.
*/
@property(nonatomic) MOZUAppliedDiscount *discount;

@end

