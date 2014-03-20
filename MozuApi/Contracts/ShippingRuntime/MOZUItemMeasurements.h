
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
#import "MOZUMeasurement.h"



@protocol MOZUItemMeasurements
@end


/**
	Measured weight and dimensions of the packaged item to be shipped.
*/
@interface MOZUItemMeasurements : JSONModel<MOZUItemMeasurements>

/**
Girth of the package in imperial units of feet and inches.
*/
@property(nonatomic) NSNumber *girth;

/**
Height of the package in imperial units of feet and inches.
*/
@property(nonatomic) MOZUMeasurement *height;

/**
Length of the package in imperial units of feet and inches.
*/
@property(nonatomic) MOZUMeasurement *length;

/**
Weight of the package in imperial units of pounds and ounces.
*/
@property(nonatomic) MOZUMeasurement *weight;

/**
Width of the package in imperial units of feet and inches.
*/
@property(nonatomic) MOZUMeasurement *width;

@end

