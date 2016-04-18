
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
#import "MOZUCustomerUserAuthInfo.h"
#import "MOZUCustomerAuthTicket.h"


@interface MOZUCustomerAuthTicketClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Creates an authentication ticket for an anonymous shopper user.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/

+ (MOZUClient *)clientForCreateAnonymousShopperAuthTicketOperationWithResponseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Generates a new authentication ticket for a customer account.
@param body The authentication information required to generate an authentication ticket for a customer account.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForCreateUserAuthTicketOperationWithBody:(MOZUCustomerUserAuthInfo *)body responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Refreshes an existing authentication ticket for a customer account by providing the refresh token string.
@param refreshToken Alphanumeric string used for access tokens. This token refreshes access for accounts by generating a new developer or application account authentication ticket after an access token expires.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForRefreshUserAuthTicketOperationWithRefreshToken:(NSString *)refreshToken responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end