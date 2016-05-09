
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



@protocol MOZUMeasurement
@end


/**
	Dimensions of the packaged product.
*/
@interface MOZUMeasurement : JSONModel<MOZUMeasurement>

/**
The unit of measurement, such as length or weight.
*/
@property(nonatomic) NSString * unit;

/**
The value of a property, used by numerous objects within Mozu including facets, attributes, products, localized content, metadata, capabilities (Mozu and third-party), location inventory adjustment, and more. The value may be a string, integer, or double. Validation may be run against the entered and saved values depending on the object type.
*/
@property(nonatomic) NSNumber * value;

@end
