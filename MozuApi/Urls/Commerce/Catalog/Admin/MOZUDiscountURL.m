/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDiscountURL.h"

@implementation MOZUDiscountURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetDiscountsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/catalog/admin/discounts/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"startIndex" : @(startIndex),
		@"pageSize" : @(pageSize),
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetDiscountOperationWithDiscountId:(NSInteger)discountId {
	NSString* template = @"/api/commerce/catalog/admin/discounts/{discountId}";
	NSDictionary* params = @{
		@"discountId" : @(discountId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetDiscountContentOperationWithDiscountId:(NSInteger)discountId {
	NSString* template = @"/api/commerce/catalog/admin/discounts/{discountId}/content";
	NSDictionary* params = @{
		@"discountId" : @(discountId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGenerateRandomCouponOperation {
	NSString* template = @"/api/commerce/catalog/admin/discounts/generate-random-coupon";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForCreateDiscountOperation {
	NSString* template = @"/api/commerce/catalog/admin/discounts/";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForRedeemDiscountOperation {
	NSString* template = @"/api/commerce/catalog/admin/discounts/Redeem";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateDiscountOperationWithDiscountId:(NSInteger)discountId {
	NSString* template = @"/api/commerce/catalog/admin/discounts/{discountId}";
	NSDictionary* params = @{
		@"discountId" : @(discountId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForUpdateDiscountContentOperationWithDiscountId:(NSInteger)discountId {
	NSString* template = @"/api/commerce/catalog/admin/discounts/{discountId}/content";
	NSDictionary* params = @{
		@"discountId" : @(discountId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteDiscountOperationWithDiscountId:(NSInteger)discountId {
	NSString* template = @"/api/commerce/catalog/admin/discounts/{discountId}";
	NSDictionary* params = @{
		@"discountId" : @(discountId),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForUnRedeemDiscountOperationWithDiscountId:(NSNumber*)discountId orderNumber:(NSNumber*)orderNumber {
	NSString* template = @"/api/commerce/catalog/admin/discounts/{discountId}/Unredeem/{orderNumber}";
	NSDictionary* params = @{
		@"discountId" : @(discountId),
		@"orderNumber" : @(orderNumber),
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}



@end