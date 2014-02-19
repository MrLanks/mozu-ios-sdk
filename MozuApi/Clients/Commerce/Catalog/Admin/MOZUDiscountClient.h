
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAuthTicket.h"
#import "MOZUAdminDiscount.h"
#import "MOZUDiscountLocalizedContent.h"
#import "MOZUDiscountCollection.h"
#import "MOZURedemption.h"


@interface MOZUDiscountClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of discounts according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy 
@param startIndex 
*/

+(MOZUClient*)clientForGetDiscountsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the details of a single discount.
@param discountId Unique identifier of the discount. System-supplied and read-only.
*/

+(MOZUClient*)clientForGetDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Retrieves the localized content specified for the specified discount.
@param discountId Unique identifier of the discount. System-supplied and read-only.
*/

+(MOZUClient*)clientForGetDiscountContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Generates a random code for a coupon.
*/

+(MOZUClient*)clientForGenerateRandomCouponOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a discount.
@param discount Properties of the discount to create. Required properties: Content.Name, AmountType, StartDate, and Target.Type.
*/

+(MOZUClient*)clientForCreateDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminDiscount*)body userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Redeems a discount configured in the product admin.
@param redemption Properties of the product discount redemption.
*/

+(MOZUClient*)clientForRedeemDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZURedemption*)body userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Modifies a discount.
@param discount Properties of the discount to update. Required properties: Content.Name, AmountType, StartDate, and Target.Type. Any unspecified properties are set to null and boolean variables are set to false.
@param discountId Unique identifier of the discount. System-supplied and read-only.
*/

+(MOZUClient*)clientForUpdateDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminDiscount*)body discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Modifies the localized content for the specified discount. Rename the discount without modifying any other discount properties.
@param content New Name and/or LocaleCode. Properties of the content to update. Required property: Name.
@param discountId Unique identifier of the discount. System-supplied and read-only.
*/

+(MOZUClient*)clientForUpdateDiscountContentOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUDiscountLocalizedContent*)body discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a discount specified by its discount ID.
@param discountId Unique identifier of the discount. System-supplied and read-only.
*/

+(MOZUClient*)clientForDeleteDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims;

/**
Deletes a previous discount redemption from an order.
@param discountId Unique identifier of the previously redeemed discount. System-supplied and read only.
@param orderNumber The number of the order associated with the redeemed product discount.
*/

+(MOZUClient*)clientForUnRedeemDiscountOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSNumber*)discountId orderNumber:(NSNumber*)orderNumber userClaims:(MOZUUserAuthTicket*)userClaims;



@end