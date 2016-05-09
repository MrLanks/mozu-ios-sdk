
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
#import "MOZUCustomerCheckoutSettings.h"
#import "MOZUOrderProcessingSettings.h"
#import "MOZUPaymentSettings.h"



@protocol MOZUCheckoutSettings
@end


/**
	Settings used when checking out an active order.
*/
@interface MOZUCheckoutSettings : JSONModel<MOZUCheckoutSettings>

/**
Settings for the checkout login. Choose whether or not shoppers must first login before a purchase can be processed. Choose the option for guests to purchase without logging in, prompt guests to login, or require them to login before a purchase can be completed.
*/
@property(nonatomic) MOZUCustomerCheckoutSettings *customerCheckoutSettings;

/**
Credit card payment authorization setting defined for the site for order processing.
*/
@property(nonatomic) MOZUOrderProcessingSettings *orderProcessingSettings;

/**
Payment gateway settings defined for the site. A payment gateway is an eCommerce application service provider that authorizes payments for eBusinesses, online retailers, and other stores that have an online commerce component.
*/
@property(nonatomic) MOZUPaymentSettings *paymentSettings;

@end
