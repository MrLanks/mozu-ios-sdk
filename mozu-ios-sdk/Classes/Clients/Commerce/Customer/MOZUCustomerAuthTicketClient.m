
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAuthTicketClient.h"
#import "MOZUCustomerAuthTicketURLComponents.h"
#import "MozuCustomerAuthTicket.h"


@implementation MOZUCustomerAuthTicketClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForCreateAnonymousShopperAuthTicketOperationWithResponseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAuthTicketURLComponents URLComponentsForCreateAnonymousShopperAuthTicketOperationWithResponseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForCreateUserAuthTicketOperationWithBody:(MOZUCustomerUserAuthInfo *)body responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAuthTicketURLComponents URLComponentsForCreateUserAuthTicketOperationWithResponseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForRefreshUserAuthTicketOperationWithRefreshToken:(NSString *)refreshToken responseFields:(NSString *)responseFields {
	id url = [MOZUCustomerAuthTicketURLComponents URLComponentsForRefreshUserAuthTicketOperationWithRefreshToken:refreshToken responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAuthTicket alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end