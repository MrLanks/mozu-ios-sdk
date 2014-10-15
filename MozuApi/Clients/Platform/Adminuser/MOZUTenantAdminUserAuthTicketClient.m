
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUTenantAdminUserAuthTicketClient.h"
#import "MOZUTenantAdminUserAuthTicketURLComponents.h"
#import "MozuTenantAdminUserAuthTicket.h"


@implementation MOZUTenantAdminUserAuthTicketClient

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

+ (MOZUClient *)clientForCreateUserAuthTicketOperationWithBody:(MOZUUserAuthInfo *)body tenantId:(NSNumber *)tenantId responseFields:(NSString *)responseFields {
	id url = [MOZUTenantAdminUserAuthTicketURLComponents URLComponentsForCreateUserAuthTicketOperationWithTenantId:tenantId responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUTenantAdminUserAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForRefreshAuthTicketOperationWithBody:(MOZUTenantAdminUserAuthTicket *)body tenantId:(NSNumber *)tenantId responseFields:(NSString *)responseFields {
	id url = [MOZUTenantAdminUserAuthTicketURLComponents URLComponentsForRefreshAuthTicketOperationWithTenantId:tenantId responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUTenantAdminUserAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeleteUserAuthTicketOperationWithRefreshToken:(NSString *)refreshToken {
	id url = [MOZUTenantAdminUserAuthTicketURLComponents URLComponentsForDeleteUserAuthTicketOperationWithRefreshToken:refreshToken];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end