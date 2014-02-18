
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
#import "MOZUCustomerUserAuthInfo.h"
#import "MOZUCustomerAuthTicket.h"


@interface MOZUCustomerAuthTicketClient : NSObject

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
Generates a new authentication ticket for a customer account.
@param userAuthInfo The authentication information required to generate an authetication ticket for a user, which consists of a user name and password.
*/

+(MOZUClient*)clientForCreateUserAuthTicketOperationWithUserAuthInfo:(MOZUuserAuthInfo*)userAuthInfo userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Refreshes an existing authentication ticket for a customer account by providing the refresh token string.
@param refreshToken The refresh token string required to refresh a user's authentication ticket.
*/

+(MOZUClient*)clientForRefreshUserAuthTicketOperationWithRefreshToken:(NSString*)refreshToken userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end