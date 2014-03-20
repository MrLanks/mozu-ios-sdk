/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAuthTicketURLComponents.h"

@implementation MOZUAuthTicketURLComponents

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

+ (MOZUURLComponents *)URLComponentsForAuthenticateAppOperation {
	NSString *template = @"/api/platform/applications/authtickets/";
	NSDictionary *params = nil;

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForRefreshAppAuthTicketOperation {
	NSString *template = @"/api/platform/applications/authtickets/refresh-ticket";
	NSDictionary *params = nil;

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForDeleteAppAuthTicketOperationWithRefreshToken:(NSString *)refreshToken {
	NSString *template = @"/api/platform/applications/authtickets/{refreshToken}";
	NSDictionary *params = @{
		@"refreshToken" : refreshToken,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}



@end