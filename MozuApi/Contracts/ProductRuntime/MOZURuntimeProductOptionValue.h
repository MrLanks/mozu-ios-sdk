
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



@protocol MOZURuntimeProductOptionValue
@end


/**
	Represents the values that are the product option selections for a shopper to choose when ordering a product.
*/
@interface MOZURuntimeProductOptionValue : JSONModel<MOZURuntimeProductOptionValue>

/**
Unique identifier of the product attribute value.
*/
@property(nonatomic) NSIntegerattributeValueId;

/**
The difference between the highest price and the lowest price.
*/
@property(nonatomic) NSNumber *deltaPrice;

/**
The difference between the highest weight and the lowest weight.
*/
@property(nonatomic) NSNumber *deltaWeight;

/**
If true, the product option value is the default value that the merchant supplied.
*/
@property(nonatomic) NSNumber *isDefault;

/**
If true, the product option value is available for a shopper to choose. During configuration, this property will be false if the option value is invalid with other selected options.
*/
@property(nonatomic) NSNumber *isEnabled;

/**
If true, the entity is selected. If false, the entity is not selected.
*/
@property(nonatomic) NSNumber *isSelected;

/**
The product attribute value entered by the shopper, if applicable.
*/
@property(nonatomic) NSObject *shopperEnteredValue;

/**
The string value entered for a product option attribute.
*/
@property(nonatomic) NSString *stringValue;

/**
The value of a product option attribute.
*/
@property(nonatomic) NSObject *value;

@end

