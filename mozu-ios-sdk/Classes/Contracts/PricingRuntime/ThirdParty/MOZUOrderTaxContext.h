
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
#import "MOZUItemTaxContext.h"



@protocol MOZUOrderTaxContext
@end


/**
	Properties of the tax context applicable for the order.
*/
@interface MOZUOrderTaxContext : JSONModel<MOZUOrderTaxContext>

/**
Tax amount applied to the handling fee defined for orders on this site.
*/
@property(nonatomic) NSNumber * handlingFeeTax;

/**
Tax amount applied to the order.
*/
@property(nonatomic) NSNumber * orderTax;

/**
Amount of tax applied to shipping costs for line items in and entire orders.
*/
@property(nonatomic) NSNumber * shippingTax;

/**
Properties of the tax context applicable for line items in an order.
*/
@property(nonatomic) NSArray<MOZUItemTaxContext> *itemTaxContexts;

@end
