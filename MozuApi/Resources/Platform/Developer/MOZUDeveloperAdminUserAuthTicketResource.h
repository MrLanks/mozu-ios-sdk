
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
#import "MOZUAPIContext.h"

#import "MOZUUserAuthInfo.h"
#import "MOZUDeveloperAdminUserAuthTicket.h"


@interface MOZUDeveloperAdminUserAuthTicketResource : NSObject


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

@param body 
@param developerAccountId 
*/

- (void)createDeveloperUserAuthTicketWithBody:(MOZUUserAuthInfo *)body developerAccountId:(NSNumber *)developerAccountId completionHandler:(void(^)(MOZUDeveloperAdminUserAuthTicket *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**

@param body 
@param developerAccountId 
*/

- (void)refreshDeveloperAuthTicketWithBody:(MOZUDeveloperAdminUserAuthTicket *)body developerAccountId:(NSNumber *)developerAccountId completionHandler:(void(^)(MOZUDeveloperAdminUserAuthTicket *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**

@param refreshToken 
*/

- (void)deleteUserAuthTicketWithRefreshToken:(NSString *)refreshToken completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end