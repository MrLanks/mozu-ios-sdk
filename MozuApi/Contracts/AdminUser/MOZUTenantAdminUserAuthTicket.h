
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
#import "MOZUTenant.h"
#import "MOZUUserProfile.h"



@protocol MOZUTenantAdminUserAuthTicket
@end


/**
	Properties of the authentication ticket to be used in user claims with the Mozu API.
*/
@interface MOZUTenantAdminUserAuthTicket : JSONModel<MOZUTenantAdminUserAuthTicket>

/**
Alphanumeric string used to authenticate the user in API request headers.
*/
@property(nonatomic) NSString *accessToken;

/**
The date and time the user access token expires.
*/
@property(nonatomic) NSDate *accessTokenExpiration;

/**
Date and time when the entity was created, represented in UTC Date/Time.
*/
@property(nonatomic) NSDate *createdOn;

/**
Collection of behaviors encrypted in the user authentication ticket. Behaviors are granted to users as part of the role assigned for the given tenant or developer account.
*/
@property(nonatomic) NSArray *grantedBehaviors;

/**
Alphanumeric string used to generate a new user authentication ticket after the access token expires.
*/
@property(nonatomic) NSString *refreshToken;

/**
The date and time the user refresh token expires.
*/
@property(nonatomic) NSDate *refreshTokenExpiration;

/**
Collection of tenants for which the user authentication ticket grants access.
*/
@property(nonatomic) NSArray<MOZUTenant> *availableTenants;

/**
Tenant information associated with the user authentication ticket.
*/
@property(nonatomic) MOZUTenant *tenant;

/**
User information associated with the authentication ticket.
*/
@property(nonatomic) MOZUUserProfile *user;

@end

