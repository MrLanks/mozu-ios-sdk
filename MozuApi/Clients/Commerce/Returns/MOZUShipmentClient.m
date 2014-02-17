
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/NSJSONSerialization.h>
#import "MOZUShipmentClient.h"
#import "MOZUShipmentUrl.h"
#import "MozuCommercePackage.h"
#import "MozuShipment.h"


@implementation MOZUShipmentClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetShipmentOperationWithWithReturnId:(NSString*)returnId shipmentId:(NSString*)shipmentId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUShipmentURL URLForGetShipmentOperationWithReturnId:returnId shipmentId:shipmentId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUShipment alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForCreatePackageShipmentsOperationWithWithPackageIds:(NSString*)packageIds returnId:(NSString*)returnId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUShipmentURL URLForCreatePackageShipmentsOperationWithReturnId:returnId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [[NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUCommercePackage arrayOfModelFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}


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

+(MOZUClient*)clientForDeleteShipmentOperationWithWithReturnId:(NSString*)returnId shipmentId:(NSString*)shipmentId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUShipmentURL URLForDeleteShipmentOperationWithReturnId:returnId shipmentId:shipmentId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end