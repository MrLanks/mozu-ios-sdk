
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
The sequential display order of the gateway in Mozu Admin.
*/
@property(nonatomic) NSIntegeradminDisplayOrder;

/**
The name that displays for the payment gateway.
*/
@property(nonatomic) NSString *displayName;

/**
The localizable name of the payment gateway.
*/
@property(nonatomic) NSString *name;

/**
The name of the Volusion store.
*/
@property(nonatomic) NSString *volusionStoreName;

@end
