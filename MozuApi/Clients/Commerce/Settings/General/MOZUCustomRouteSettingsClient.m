
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomRouteSettingsClient.h"
#import "MOZUCustomRouteSettingsURLComponents.h"
#import "MozuCustomRouteSettings.h"


@implementation MOZUCustomRouteSettingsClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetCustomRouteSettingsOperationWithResponseFields:(NSString *)responseFields {
	id url = [MOZUCustomRouteSettingsURLComponents URLComponentsForGetCustomRouteSettingsOperationWithResponseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomRouteSettings alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForCreateCustomRouteSettingsOperationWithBody:(MOZUCustomRouteSettings *)body responseFields:(NSString *)responseFields {
	id url = [MOZUCustomRouteSettingsURLComponents URLComponentsForCreateCustomRouteSettingsOperationWithResponseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomRouteSettings alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdateCustomRouteSettingsOperationWithBody:(MOZUCustomRouteSettings *)body responseFields:(NSString *)responseFields {
	id url = [MOZUCustomRouteSettingsURLComponents URLComponentsForUpdateCustomRouteSettingsOperationWithResponseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomRouteSettings alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeleteCustomRouteSettingsOperation {
	id url = [MOZUCustomRouteSettingsURLComponents URLComponentsForDeleteCustomRouteSettingsOperation];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end