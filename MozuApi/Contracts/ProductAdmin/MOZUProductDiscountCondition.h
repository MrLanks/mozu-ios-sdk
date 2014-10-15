
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



@protocol MOZUProductDiscountCondition
@end


/**
	Properties of the conditions that must be met for a discount to apply to a product.
*/
@interface MOZUProductDiscountCondition : JSONModel<MOZUProductDiscountCondition>

/**
Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
@property(nonatomic) NSString * productCode;

@end

