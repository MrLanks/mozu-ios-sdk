
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



@protocol MOZUAddress
@end


/**
	Address information to supply for a contact.
*/
@interface MOZUAddress : JSONModel<MOZUAddress>

/**
Physical or mailing address line one. Usually includes the street number and street name or it could be a P.O. Box. Max length: 200.
*/
@property(nonatomic) NSString *address1;

/**
Physical or mailing address line two. Usually supplements the main street address with apartment, floor, suite, building, or unit information. Max length: 200.
*/
@property(nonatomic) NSString *address2;

/**
Physical or mailing address line three. Max length: 200.
*/
@property(nonatomic) NSString *address3;

/**
Physical or mailing address line four. Max length: 200.
*/
@property(nonatomic) NSString *address4;

/**
The type of address, which is commercial or residential.
*/
@property(nonatomic) NSString *addressType;

/**
City or town for the physical or mailing address. The maximum character length is 100.
*/
@property(nonatomic) NSString *cityOrTown;

/**
The 2-letter geographic code representing the country for the physical or mailing address. Currently limited to the US.
*/
@property(nonatomic) NSString *countryCode;

/**
If true, the address has been verified by an address validation service.
*/
@property(nonatomic) NSNumber *isValidated;

/**
The postal or zip code for the address. For example, a USPS-approved ZIP code standard is ZIP+4: 12345-6789. The maximum character length is 100.
*/
@property(nonatomic) NSString *postalOrZipCode;

/**
The two-letter geographic code representing the state for the physical or mailing address. This is currently limited to the US.
*/
@property(nonatomic) NSString *stateOrProvince;

@end

