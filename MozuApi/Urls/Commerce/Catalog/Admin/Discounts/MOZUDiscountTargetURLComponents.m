/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDiscountTargetURLComponents.h"

@implementation MOZUDiscountTargetURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetDiscountTargetOperationWithDiscountId:(NSInteger)discountId {
	NSString *template = @"/api/commerce/catalog/admin/discounts/{discountId}/target";
	NSDictionary *params = @{
		@"discountId" : @(discountId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
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

+ (MOZUURLComponents *)URLComponentsForUpdateDiscountTargetOperationWithDiscountId:(NSInteger)discountId {
	NSString *template = @"/api/commerce/catalog/admin/discounts/{discountId}/target";
	NSDictionary *params = @{
		@"discountId" : @(discountId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end