
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
#import "MOZUAttributeDetail.h"
#import "MOZURuntimeProductPropertyValue.h"



@protocol MOZURuntimeProductProperty
@end


/**
	Details of a property attribute defined for a product.
*/
@interface MOZURuntimeProductProperty : JSONModel<MOZURuntimeProductProperty>

/**
The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
@property(nonatomic) NSString *attributeFQN;

/**
If true, the product property does not appear for the product in the storefront.
*/
@property(nonatomic) NSNumber *isHidden;

/**
If true, the product property can have more than one selected value.
*/
@property(nonatomic) NSNumber *isMultiValue;

/**
Details of the attribute defined as a product property.
*/
@property(nonatomic) MOZUAttributeDetail *attributeDetail;

/**
List of values defined for the product property attribute.
*/
@property(nonatomic) NSArray<MOZURuntimeProductPropertyValue> *values;

@end

