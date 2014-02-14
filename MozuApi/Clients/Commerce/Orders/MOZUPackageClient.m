
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPackageClient.h"
#import "MOZUPackageUrl.h"
#import "MozuCommercePackage.h"


@implementation MOZUPackageClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetPackageOperationWithWithOrderId:(NSString*)orderId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPackageURL URLForGetPackageOperationWithOrderId:orderId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCommercePackage alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForGetAvailablePackageFulfillmentActionsOperationWithWithOrderId:(NSString*)orderId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPackageURL URLForGetAvailablePackageFulfillmentActionsOperationWithOrderId:orderId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}

+(MOZUClient*)clientForGetPackageLabelOperationWithWithOrderId:(NSString*)orderId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPackageURL URLForGetPackageLabelOperationWithOrderId:orderId packageId:packageId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreatePackageOperationWithWithpackage:((MOZUCommercePackage*))package orderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPackageURL URLForCreatePackageOperationWithOrderId:orderId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCommercePackage alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdatePackageOperationWithWithpackage:((MOZUCommercePackage*))package orderId:(NSString*)orderId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPackageURL URLForUpdatePackageOperationWithOrderId:orderId packageId:packageId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCommercePackage alloc] initWithString:jsonResult error:nil];
	}

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeletePackageOperationWithWithOrderId:(NSString*)orderId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUPackageURL URLForDeletePackageOperationWithOrderId:orderId packageId:packageId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end