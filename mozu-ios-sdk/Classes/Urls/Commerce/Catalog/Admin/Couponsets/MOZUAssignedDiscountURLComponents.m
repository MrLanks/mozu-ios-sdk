/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAssignedDiscountURLComponents.h"

@implementation MOZUAssignedDiscountURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetAssignedDiscountsOperationWithCouponSetCode:(NSString *)couponSetCode {
	NSString *template = @"/api/commerce/catalog/admin/couponsets/{couponSetCode}/assigneddiscounts";
	NSDictionary *params = @{
		@"couponSetCode" : couponSetCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForAssignDiscountOperationWithCouponSetCode:(NSString *)couponSetCode {
	NSString *template = @"/api/commerce/catalog/admin/couponsets/{couponSetCode}/assigneddiscounts";
	NSDictionary *params = @{
		@"couponSetCode" : couponSetCode,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
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

+ (MOZUURLComponents *)URLComponentsForUnAssignDiscountOperationWithCouponSetCode:(NSString *)couponSetCode discountId:(NSInteger)discountId {
	NSString *template = @"/api/commerce/catalog/admin/couponsets/{couponSetCode}/assigneddiscounts/{discountId}";
	NSDictionary *params = @{
		@"couponSetCode" : couponSetCode,
		@"discountId" : @(discountId),
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end