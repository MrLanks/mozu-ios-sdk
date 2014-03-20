
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAuthTicket.h"
#import "MOZUCustomerCheckoutSettings.h"


@interface MOZUCustomerCheckoutSettingsClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves all checkout settings defined for the site: Payment settings, such as the payment gateway ID and credentials, supported credit cards, and more; Customer Checkout settings, such as whether login is required, and any custom attributes; and Order Processing settings, such as when payment is authorized and captured, and any custom attributes.
*/

+ (MOZUClient *)clientForGetCustomerCheckoutSettingsOperationWithUserClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Modifies existing site checkout settings. Modify Payment, Customer Checkout, and Order Processing settings in one PUT.
@param body All the properties to update in the checkout settings.
*/

+ (MOZUClient *)clientForUpdateCustomerCheckoutSettingsOperationWithBody:(MOZUCustomerCheckoutSettings *)body userClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end