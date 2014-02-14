
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



@protocol MOZUShippingDiscount
@end


/**
	Properties of a discount that can apply to shipping an order.
*/
@interface MOZUShippingDiscount : JSONModel<MOZUShippingDiscount>

/**
Carrier-supplied code that represents the shipping method service type associated with the shipping discount.
*/
@property(nonatomic) NSString* methodCode;

/**
Properties of the shipping discount.
*/
@property(nonatomic) AppliedDiscount discount;

@end
