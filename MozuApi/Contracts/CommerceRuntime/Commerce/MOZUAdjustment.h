
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



@protocol MOZUAdjustment
@end


/**
	Properties of an ad-hoc price adjustment for an order.
*/
@interface MOZUAdjustment : JSONModel<MOZUAdjustment>

/**
The amount of the order-level adjustment, which can be a positive or negative amount.
*/
@property(nonatomic) NSNumber *amount;

/**
The shopper-facing description of the order-level adjustment.
*/
@property(nonatomic) NSString *description;

/**
Administrator notes associated with the order adjustment. These comments are not shopper facing.
*/
@property(nonatomic) NSString *internalComment;

@end

