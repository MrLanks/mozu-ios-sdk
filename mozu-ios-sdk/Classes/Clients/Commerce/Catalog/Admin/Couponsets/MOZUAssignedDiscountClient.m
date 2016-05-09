
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAssignedDiscountClient.h"
#import "MOZUAssignedDiscountURLComponents.h"
#import "MozuAssignedDiscount.h"


@implementation MOZUAssignedDiscountClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetAssignedDiscountsOperationWithCouponSetCode:(NSString *)couponSetCode {
	id url = [MOZUAssignedDiscountURLComponents URLComponentsForGetAssignedDiscountsOperationWithCouponSetCode:couponSetCode];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray *jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUAssignedDiscount arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForAssignDiscountOperationWithBody:(MOZUAssignedDiscount *)body couponSetCode:(NSString *)couponSetCode {
	id url = [MOZUAssignedDiscountURLComponents URLComponentsForAssignDiscountOperationWithCouponSetCode:couponSetCode];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
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

+ (MOZUClient *)clientForUnAssignDiscountOperationWithCouponSetCode:(NSString *)couponSetCode discountId:(NSInteger)discountId {
	id url = [MOZUAssignedDiscountURLComponents URLComponentsForUnAssignDiscountOperationWithCouponSetCode:couponSetCode discountId:discountId];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end