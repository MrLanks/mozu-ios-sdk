
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



@protocol MOZUGatewayCredentialFieldDefinition
@end


/**
	Properties of the credential fields associated with the payment gateway.
*/
@interface MOZUGatewayCredentialFieldDefinition : JSONModel<MOZUGatewayCredentialFieldDefinition>

/**
The sequential display order of the gateway in .
*/
@property(nonatomic) NSInteger adminDisplayOrder;

/**
The name that displays for the payment gateway or third-party credentials field. 
*/
@property(nonatomic) NSString * displayName;

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

/**
The name of the Volusion store.
*/
@property(nonatomic) NSString * volusionStoreName;

@end
