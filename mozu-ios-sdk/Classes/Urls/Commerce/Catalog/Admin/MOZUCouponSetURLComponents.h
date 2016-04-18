/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUCouponSetURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getCouponSets
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a `pageSize `of 25, to get the 51st through the 75th items, use `startIndex=50`.
@param pageSize The number of results to display on each page when creating paged results from a query. The amount is divided and displayed on the `pageCount `amount of pages. The default is 20 and maximum value is 200 per page.
@param sortBy The element to sort the results by and the channel in which the results appear. Either ascending (a-z) or descending (z-a) channel. Optional.
@param filter A set of filter expressions representing the search parameters for a query: eq=equals, ne=not equals, gt=greater than, lt = less than or equals, gt = greater than or equals, lt = less than or equals, sw = starts with, or cont = contains. Optional.
@param includeCounts Specifies whether to include the number of redeemed coupons, existing coupon codes, and assigned discounts in the response body.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/
+ (MOZUURLComponents *)URLComponentsForGetCouponSetsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter includeCounts:(NSNumber *)includeCounts responseFields:(NSString *)responseFields;

/**
Resource Url Components for getCouponSet
@param couponSetCode The unique identifier of the coupon set.
@param includeCounts Specifies whether to include the number of redeemed coupons, existing coupon codes, and assigned discounts in the response body.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/
+ (MOZUURLComponents *)URLComponentsForGetCouponSetOperationWithCouponSetCode:(NSString *)couponSetCode includeCounts:(NSNumber *)includeCounts responseFields:(NSString *)responseFields;

/**
Resource Url Components for getUniqueCouponSetCode
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/
+ (MOZUURLComponents *)URLComponentsForGetUniqueCouponSetCodeOperationWithResponseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addCouponSet
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/
+ (MOZUURLComponents *)URLComponentsForAddCouponSetOperationWithResponseFields:(NSString *)responseFields;

/**
Resource Url Components for validateUniqueCouponSetCode
@param code User-defined code that uniqely identifies the channel group.
*/
+ (MOZUURLComponents *)URLComponentsForValidateUniqueCouponSetCodeOperationWithCode:(NSString *)code;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateCouponSet
@param couponSetCode The unique identifier of the coupon set.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateCouponSetOperationWithCouponSetCode:(NSString *)couponSetCode responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteCouponSet
@param couponSetCode The unique identifier of the coupon set.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteCouponSetOperationWithCouponSetCode:(NSString *)couponSetCode;



@end