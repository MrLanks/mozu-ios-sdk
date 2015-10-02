
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCommerceReturnsPackageClient.h"
#import "MOZUCommerceReturnsPackageURLComponents.h"
#import "MozuFulfillmentPackage.h"


@implementation MOZUCommerceReturnsPackageClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetPackageLabelOperationWithReturnId:(NSString *)returnId packageId:(NSString *)packageId {
	id url = [MOZUCommerceReturnsPackageURLComponents URLComponentsForGetPackageLabelOperationWithReturnId:returnId packageId:packageId];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}

+ (MOZUClient *)clientForGetPackageOperationWithReturnId:(NSString *)returnId packageId:(NSString *)packageId responseFields:(NSString *)responseFields {
	id url = [MOZUCommerceReturnsPackageURLComponents URLComponentsForGetPackageOperationWithReturnId:returnId packageId:packageId responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFulfillmentPackage alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForCreatePackageOperationWithBody:(MOZUFulfillmentPackage *)body returnId:(NSString *)returnId responseFields:(NSString *)responseFields {
	id url = [MOZUCommerceReturnsPackageURLComponents URLComponentsForCreatePackageOperationWithReturnId:returnId responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFulfillmentPackage alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdatePackageOperationWithBody:(MOZUFulfillmentPackage *)body returnId:(NSString *)returnId packageId:(NSString *)packageId responseFields:(NSString *)responseFields {
	id url = [MOZUCommerceReturnsPackageURLComponents URLComponentsForUpdatePackageOperationWithReturnId:returnId packageId:packageId responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFulfillmentPackage alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeletePackageOperationWithReturnId:(NSString *)returnId packageId:(NSString *)packageId {
	id url = [MOZUCommerceReturnsPackageURLComponents URLComponentsForDeletePackageOperationWithReturnId:returnId packageId:packageId];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end