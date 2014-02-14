
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



@protocol MOZUProductAttribute
@end


/**
	Details of the product attribute, such its name and description.
*/
@interface MOZUProductAttribute : JSONModel<MOZUProductAttribute>

/**
The data type of the attribute. There are four valid data types: "Bool", "DateTime", "Number", "String"
*/
@property(nonatomic) NSString* dataType;

/**
The description of this product attribute.
*/
@property(nonatomic) NSString* description;

/**
The storefront interface input type for this attribute such as a radio button or drop-down menu selection.
*/
@property(nonatomic) NSString* inputType;

/**
The name of the product attribute.
*/
@property(nonatomic) NSString* name;

/**
An attribute value type is either predefined vocabulary by the admin during product attribute set up or it can be "AdminEntered" or "ShopperEntered". The difference between predefined values versus manually entered values is such that the first choice is a set of options to choose from. AdminEntered and ShopperEntered are values that are entered rather than system-supplied and are not stored in the database, but captured during a live commerce operations such as during an order.
*/
@property(nonatomic) NSString* valueType;

@end
