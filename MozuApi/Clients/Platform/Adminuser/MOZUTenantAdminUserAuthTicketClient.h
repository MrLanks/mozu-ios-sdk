
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
#import "MOZUUserAuthInfo.h"
#import "MOZUTenantAdminUserAuthTicket.h"


@interface MOZUTenantAdminUserAuthTicketClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates an authentication ticket for the supplied user to specify in API requests associated with the supplied tenant.
@param body The user authentication information required to generate the user authentication ticket, which consists of a user name and password.
@param responseFields Use this field to include those fields which are not included by default.
@param tenantId Unique identifier of the development or production tenant for which to generate the user authentication ticket.
*/

+ (MOZUClient *)clientForCreateUserAuthTicketOperationWithBody:(MOZUUserAuthInfo *)body tenantId:(NSNumber *)tenantId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Generates a new user authentication ticket for the specified tenant by supplying the user's existing refresh token information.
@param body Properties of the authentication ticket to refresh. The refresh token is required to complete this request.
@param responseFields Use this field to include those fields which are not included by default.
@param tenantId 
*/

+ (MOZUClient *)clientForRefreshAuthTicketOperationWithBody:(MOZUTenantAdminUserAuthTicket *)body tenantId:(NSNumber *)tenantId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the authentication ticket for the user by supplying the refresh token.
@param refreshToken Refresh token string associated with the user authentication ticket.
*/

+ (MOZUClient *)clientForDeleteUserAuthTicketOperationWithRefreshToken:(NSString *)refreshToken;



@end