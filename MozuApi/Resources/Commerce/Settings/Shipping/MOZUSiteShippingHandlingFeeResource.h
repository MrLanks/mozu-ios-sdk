
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

#import "MOZUSiteShippingHandlingFee.h"


@interface MOZUSiteShippingHandlingFeeResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of the order handling fee configured for the site.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)orderHandlingFeeWithResponseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUSiteShippingHandlingFee *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new order handling fee for the site.
@param body Properties of the order handling fee to assess for order shipment.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)createOrderHandlingFeeWithBody:(MOZUSiteShippingHandlingFee *)body responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUSiteShippingHandlingFee *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the order handling fee amount for the site.
@param body The combined price for all items in the order, including all selected options but excluding any discounts.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateOrderHandlingFeeWithBody:(MOZUSiteShippingHandlingFee *)body responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUSiteShippingHandlingFee *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end