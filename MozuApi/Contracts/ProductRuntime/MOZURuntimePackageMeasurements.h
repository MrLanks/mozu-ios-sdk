
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



@protocol MOZURuntimePackageMeasurements
@end


/**
	Dimensions of the packaged product.
*/
@interface MOZURuntimePackageMeasurements : JSONModel<MOZURuntimePackageMeasurements>

/**
Height of the package in imperial units of feet and inches.
*/
@property(nonatomic) Measurement packageHeight;

/**
Length of the package in imperial units of feet and inches.
*/
@property(nonatomic) Measurement packageLength;

/**
Weight of the package in imperial units of pounds and ounces.
*/
@property(nonatomic) Measurement packageWeight;

/**
Width of the package in imperial units of feet and inches.
*/
@property(nonatomic) Measurement packageWidth;

@end
