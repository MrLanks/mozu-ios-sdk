
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



@protocol MOZUPricingProductPropertyValue
@end


/**
	Properties of a value for a product property.
*/
@interface MOZUPricingProductPropertyValue : JSONModel<MOZUPricingProductPropertyValue>

/**
If the product property value is a text entry, the string value of the product property.
*/
@property(nonatomic) NSString* stringValue;

/**
If the product property value is selected from a list of possible values, the selected value.
*/
@property(nonatomic) id value;

@end
