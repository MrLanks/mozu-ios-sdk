
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/NSJSONSerialization.h>
#import "MOZUCartClient.h"
#import "MOZUCartUrl.h"
#import "MozuCart.h"
#import "MozuCartSummary.h"


@implementation MOZUCartClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetCartOperationWithWithCartId:(NSString*)cartId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartURL URLForGetCartOperationWithCartId:cartId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCart alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetOrCreateCartOperationWithUserClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartURL URLForGetOrCreateCartOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCart alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetCartSummaryOperationWithUserClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartURL URLForGetCartSummaryOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCartSummary alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetUserCartOperationWithWithUserId:(NSString*)userId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartURL URLForGetUserCartOperationWithUserId:userId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCart alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetUserCartSummaryOperationWithWithUserId:(NSString*)userId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartURL URLForGetUserCartSummaryOperationWithUserId:userId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCartSummary alloc] initWithString:jsonResult error:nil];
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

+(MOZUClient*)clientForUpdateCartOperationWithWithCart:(MOZUCart*)cart userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartURL URLForUpdateCartOperation];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCart alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteCartOperationWithWithCartId:(NSString*)cartId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartURL URLForDeleteCartOperationWithCartId:cartId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}

+(MOZUClient*)clientForDeleteCurrentCartOperationWithUserClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUCartURL URLForDeleteCurrentCartOperation];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end