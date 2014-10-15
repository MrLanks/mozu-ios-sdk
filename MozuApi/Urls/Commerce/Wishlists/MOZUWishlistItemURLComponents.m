/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUWishlistItemURLComponents.h"

@implementation MOZUWishlistItemURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetWishlistItemOperationWithWishlistId:(NSString *)wishlistId wishlistItemId:(NSString *)wishlistItemId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/wishlists/{wishlistId}/items/{wishlistItemId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"wishlistId" : wishlistId,
		@"wishlistItemId" : wishlistItemId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetWishlistItemsOperationWithWishlistId:(NSString *)wishlistId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/wishlists/{wishlistId}/items?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"wishlistId" : wishlistId,
		@"startIndex" : startIndex ? startIndex : @"",
		@"pageSize" : pageSize ? pageSize : @"",
		@"sortBy" : sortBy ? sortBy : @"",
		@"filter" : filter ? filter : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetWishlistItemsByWishlistNameOperationWithCustomerAccountId:(NSInteger)customerAccountId wishlistName:(NSString *)wishlistName startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/wishlists/customers/{customerAccountId}/{wishlistName}/items?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"customerAccountId" : @(customerAccountId),
		@"wishlistName" : wishlistName,
		@"startIndex" : startIndex ? startIndex : @"",
		@"pageSize" : pageSize ? pageSize : @"",
		@"sortBy" : sortBy ? sortBy : @"",
		@"filter" : filter ? filter : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForAddItemToWishlistOperationWithWishlistId:(NSString *)wishlistId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/wishlists/{wishlistId}/items?responseFields={responseFields}";
	NSDictionary *params = @{
		@"wishlistId" : wishlistId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForUpdateWishlistItemQuantityOperationWithWishlistId:(NSString *)wishlistId wishlistItemId:(NSString *)wishlistItemId quantity:(NSInteger)quantity responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/wishlists/{wishlistId}/items/{wishlistItemId}/{quantity}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"wishlistId" : wishlistId,
		@"wishlistItemId" : wishlistItemId,
		@"quantity" : @(quantity),
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForUpdateWishlistItemOperationWithWishlistId:(NSString *)wishlistId wishlistItemId:(NSString *)wishlistItemId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/wishlists/{wishlistId}/items/{wishlistItemId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"wishlistId" : wishlistId,
		@"wishlistItemId" : wishlistItemId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForRemoveAllWishlistItemsOperationWithWishlistId:(NSString *)wishlistId {
	NSString *template = @"/api/commerce/wishlists/{wishlistId}/items";
	NSDictionary *params = @{
		@"wishlistId" : wishlistId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForDeleteWishlistItemOperationWithWishlistId:(NSString *)wishlistId wishlistItemId:(NSString *)wishlistItemId {
	NSString *template = @"/api/commerce/wishlists/{wishlistId}/items/{wishlistItemId}";
	NSDictionary *params = @{
		@"wishlistId" : wishlistId,
		@"wishlistItemId" : wishlistItemId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end