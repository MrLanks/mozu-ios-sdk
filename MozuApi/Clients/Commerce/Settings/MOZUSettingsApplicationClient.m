
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUSettingsApplicationClient.h"
#import "MOZUSettingsApplicationURLComponents.h"
#import "MozuSiteSettingsApplication.h"


@implementation MOZUSettingsApplicationClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForThirdPartyGetApplicationOperationWithUserClaims:(MOZUUserAuthTicket *)userClaims {
	id url = [MOZUSettingsApplicationURLComponents URLComponentsForThirdPartyGetApplicationOperation];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUSiteSettingsApplication alloc] initWithString:jsonResult error:nil];
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

+ (MOZUClient *)clientForThirdPartyUpdateApplicationOperationWithBody:(MOZUSiteSettingsApplication *)body userClaims:(MOZUUserAuthTicket *)userClaims {
	id url = [MOZUSettingsApplicationURLComponents URLComponentsForThirdPartyUpdateApplicationOperation];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUSiteSettingsApplication alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end