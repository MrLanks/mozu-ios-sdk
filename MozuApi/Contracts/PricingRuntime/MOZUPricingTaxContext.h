
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
#import "MOZUAddress.h"



@protocol MOZUPricingTaxContext
@end


/**
	The tax properties associated with the order.
*/
@interface MOZUPricingTaxContext : JSONModel<MOZUPricingTaxContext>

/**
Unique identifier of the customer.
*/
@property(nonatomic) NSString *customerId;

/**
Unique identifier of the tax context.
*/
@property(nonatomic) NSString *taxContextId;

/**
If the order is exempt from sales tax, the unique identifier of the tax exempt entity.
*/
@property(nonatomic) NSString *taxExemptId;

/**
The address to which the order ships.
*/
@property(nonatomic) MOZUAddress *destinationAddress;

/**
The address from which the order ships.
*/
@property(nonatomic) MOZUAddress *originAddress;

@end

