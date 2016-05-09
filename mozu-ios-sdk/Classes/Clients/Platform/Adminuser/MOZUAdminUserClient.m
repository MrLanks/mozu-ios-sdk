
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminUserClient.h"
#import "MOZUAdminUserURLComponents.h"
#import "MozuTenantCollection.h"
#import "MozuUser.h"


@implementation MOZUAdminUserClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetTenantScopesForUserOperationWithUserId:(NSString *)userId responseFields:(NSString *)responseFields {
	id url = [MOZUAdminUserURLComponents URLComponentsForGetTenantScopesForUserOperationWithUserId:userId responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUTenantCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetUserOperationWithUserId:(NSString *)userId responseFields:(NSString *)responseFields {
	id url = [MOZUAdminUserURLComponents URLComponentsForGetUserOperationWithUserId:userId responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUUser alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end