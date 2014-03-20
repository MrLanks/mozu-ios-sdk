
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
#import "MOZUField.h"



@protocol MOZUAddressSchema
@end


/**
	Describes the structure of postal addresses based on the country specified. Because addresses vary from country to country, this schema allows a flexible storage structure.
*/
@interface MOZUAddressSchema : JSONModel<MOZUAddressSchema>

/**
The 2-letter geographic code representing the country for the physical or mailing address. Currently limited to the US.
*/
@property(nonatomic) NSString *countryCode;

/**
The label associated with this country.
*/
@property(nonatomic) NSString *countryLabel;

/**
The unique identifier of this postal address schema.
*/
@property(nonatomic) NSIntegerid;

/**
The fields to display for postal addresses associated with this country.
*/
@property(nonatomic) NSArray<MOZUField> *fields;

@end

