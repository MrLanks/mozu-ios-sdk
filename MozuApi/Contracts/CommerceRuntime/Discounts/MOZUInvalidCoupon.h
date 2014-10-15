
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



@protocol MOZUInvalidCoupon
@end


/**
	Properties of an invalid coupon code a shopper attempts to enter for a cart or order.
*/
@interface MOZUInvalidCoupon : JSONModel<MOZUInvalidCoupon>

@property(nonatomic) NSString * couponCode;

/**
Date and time when the entity was created, represented in UTC Date/Time.
*/
@property(nonatomic) NSDate * createDate;

@property(nonatomic) NSInteger discountId;

/**
The reason the coupon was determined to be invalid.
*/
@property(nonatomic) NSString * reason;

/**
The code that identifies the reason the coupon code is invalid.
*/
@property(nonatomic) NSInteger reasonCode;

@end

