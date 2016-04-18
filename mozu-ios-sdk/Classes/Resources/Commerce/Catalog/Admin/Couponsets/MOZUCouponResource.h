
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
#import "MOZUAPIContext.h"

#import "MOZUCoupon.h"
#import "MOZUCouponCollection.h"


@interface MOZUCouponResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of the specified coupon. Use the couponSetCode and the couponCode parameter to specify the coupon within a coupon set. Use the includeCounts paramter to specify whether to return the redemptionCount property in the response body object.
@param couponCode Code associated with the coupon to remove from the cart.
@param couponSetCode The unique identifier of the coupon set that the coupon belongs to.
@param includeCounts Specifies whether to return the redemptionCount property in the response body object.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/

- (void)couponWithCouponSetCode:(NSString *)couponSetCode couponCode:(NSString *)couponCode includeCounts:(NSNumber *)includeCounts responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCoupon *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves a list of coupons in a specified coupon set according to any specified filter criteria and sort options.
@param couponSetCode The unique identifier of the coupon set that the coupons belongs to.
@param filter A set of filter expressions representing the search parameters for a query: eq=equals, ne=not equals, gt=greater than, lt = less than or equals, gt = greater than or equals, lt = less than or equals, sw = starts with, or cont = contains. Optional.
@param includeCounts Specifies whether to include the redemptionCount property in the response body object.
@param pageSize The number of results to display on each page when creating paged results from a query. The amount is divided and displayed on the `pageCount `amount of pages. The default is 20 and maximum value is 200 per page.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
@param sortBy The element to sort the results by and the channel in which the results appear. Either ascending (a-z) or descending (z-a) channel. Optional.
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a `pageSize `of 25, to get the 51st through the 75th items, use `startIndex=50`.
*/

- (void)couponsWithCouponSetCode:(NSString *)couponSetCode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter includeCounts:(NSNumber *)includeCounts responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCouponCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds coupons  to a specified manual coupon set. Use the couponSetCode parameter to specify the manual coupon set.
@param body Mozu.ProductAdmin.Contracts.Coupon ApiType DOCUMENT_HERE 
@param couponSetCode The unique identifier of the coupon set.
*/

- (void)addCouponsWithBody:(NSArray<MOZUCoupon> *)body couponSetCode:(NSString *)couponSetCode completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Deletes the specified coupons and removes them from the coupon set. You can only delete a coupon if it has not been redeemed. Use the canBeDeleted property to determine whether a coupon can be deleted.
@param body The unique identifiers of the coupons to delete.
@param couponSetCode The unique identifier of the coupon set that the coupon belongs to.
*/

- (void)deleteCouponsWithBody:(NSArray *)body couponSetCode:(NSString *)couponSetCode completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

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

/**
Deletes the specified coupon and remove it from the coupon set. You can only delete a coupon if it has not been redeemed. Use the canBeDeleted property to determine whether a coupon can be deleted.
@param couponCode Code associated with the coupon to remove from the cart.
@param couponSetCode The unique identifier of the coupon set that the coupon belongs to.
*/

- (void)deleteCouponWithCouponSetCode:(NSString *)couponSetCode couponCode:(NSString *)couponCode completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end