
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



@protocol MOZUCommerceDiscount
@end


/**
	Properties of a discount defined for a product or order in a storefront.
*/
@interface MOZUCommerceDiscount : JSONModel<MOZUCommerceDiscount>

/**
The date and time at which the discount can no longer be applied to a product or order.
*/
@property(nonatomic) NSDate * expirationDate;

/**
Unique identifier of the discount.
*/
@property(nonatomic) NSInteger id;

/**
List of cart or order items to which the discount applies, if applicable.
*/
@property(nonatomic) NSArray *itemIds;

/**
The name of the discount, in the language specified by the LocaleCode of the storefront.
*/
@property(nonatomic) NSString * name;

@end

