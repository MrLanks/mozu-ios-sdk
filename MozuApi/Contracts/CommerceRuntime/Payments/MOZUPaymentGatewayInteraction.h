
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



@protocol MOZUPaymentGatewayInteraction
@end


@interface MOZUPaymentGatewayInteraction : JSONModel<MOZUPaymentGatewayInteraction>

@property(nonatomic) NSString * gatewayResponseText;

@property(nonatomic) NSString * gatewayTransactionId;

@property(nonatomic) NSString * gatewayAuthCode;

@property(nonatomic) NSString * gatewayAVSCodes;

@property(nonatomic) NSString * gatewayCVV2Codes;

@property(nonatomic) NSNumber * gatewayInteractionId;

@property(nonatomic) NSString * gatewayResponseCode;

@end

