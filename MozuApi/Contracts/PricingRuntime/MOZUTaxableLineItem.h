
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
#import "MOZUPricingProductProperty.h"



@protocol MOZUTaxableLineItem
@end


@interface MOZUTaxableLineItem : JSONModel<MOZUTaxableLineItem>

@property(nonatomic) NSString * id;

@property(nonatomic) NSNumber * isTaxable;

@property(nonatomic) NSNumber * lineItemPrice;

@property(nonatomic) NSString * productCode;

@property(nonatomic) NSString * productName;

@property(nonatomic) NSInteger quantity;

@property(nonatomic) NSString * reason;

@property(nonatomic) NSNumber * shippingAmount;

@property(nonatomic) NSArray<MOZUPricingProductProperty> *productProperties;

@end

