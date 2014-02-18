
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUWishlistItemClient.h"
#import "MOZUWishlistItemUrl.h"
#import "MozuWishlistItem.h"
#import "MozuWishlistItemCollection.h"
#import "MozuWishlist.h"


@implementation MOZUWishlistItemClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetWishlistItemOperationWithWishlistId:(NSString*)wishlistId wishlistItemId:(NSString*)wishlistItemId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistItemURL URLForGetWishlistItemOperationWithWishlistId:wishlistId wishlistItemId:wishlistItemId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlistItem alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetWishlistItemsOperationWithWishlistId:(NSString*)wishlistId startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistItemURL URLForGetWishlistItemsOperationWithWishlistId:wishlistId startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlistItemCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetWishlistItemsByWishlistNameOperationWithCustomerAccountId:(NSInteger)customerAccountId wishlistName:(NSString*)wishlistName startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistItemURL URLForGetWishlistItemsByWishlistNameOperationWithCustomerAccountId:customerAccountId wishlistName:wishlistName startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlistItemCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddItemToWishlistOperationWithWishlistItem:(MOZUwishlistItem*)wishlistItem wishlistId:(NSString*)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistItemURL URLForAddItemToWishlistOperationWithWishlistId:wishlistId];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlistItem alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateWishlistItemOperationWithWishlistItem:(MOZUwishlistItem*)wishlistItem wishlistId:(NSString*)wishlistId wishlistItemId:(NSString*)wishlistItemId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistItemURL URLForUpdateWishlistItemOperationWithWishlistId:wishlistId wishlistItemId:wishlistItemId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlistItem alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForUpdateWishlistItemQuantityOperationWithWishlistId:(NSString*)wishlistId wishlistItemId:(NSString*)wishlistItemId quantity:(NSInteger)quantity userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistItemURL URLForUpdateWishlistItemQuantityOperationWithWishlistId:wishlistId wishlistItemId:wishlistItemId quantity:quantity];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlistItem alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForRemoveAllWishlistItemsOperationWithWishlistId:(NSString*)wishlistId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistItemURL URLForRemoveAllWishlistItemsOperationWithWishlistId:wishlistId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUWishlist alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForDeleteWishlistItemOperationWithWishlistId:(NSString*)wishlistId wishlistItemId:(NSString*)wishlistItemId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUWishlistItemURL URLForDeleteWishlistItemOperationWithWishlistId:wishlistId wishlistItemId:wishlistItemId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end