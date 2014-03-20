
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
#import "MOZUCustomAttribute.h"
#import "MOZUAddress.h"
#import "MOZURateRequestItem.h"



@protocol MOZURateRequest
@end


/**
	Properties required to request a shipping rate calculation.
*/
@interface MOZURateRequest : JSONModel<MOZURateRequest>

@property(nonatomic) NSArray *carrierIds;

@property(nonatomic) NSDate *estimatedShipmentDate;

@property(nonatomic) NSNumber *isDestinationAddressCommercial;

@property(nonatomic) NSString *isoCurrencyCode;

@property(nonatomic) NSNumber *orderTotal;

@property(nonatomic) NSArray *shippingServiceTypes;

@property(nonatomic) NSArray<MOZUCustomAttribute> *customAttributes;

@property(nonatomic) MOZUAddress *destinationAddress;

@property(nonatomic) NSArray<MOZURateRequestItem> *items;

@property(nonatomic) MOZUAddress *originAddress;

@end

