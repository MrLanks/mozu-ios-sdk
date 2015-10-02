
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

#import "MOZUFulfillmentPackage.h"


@interface MOZUCommerceOrdersPackageResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of the actions available to perform for a package associated with order fulfillment.
@param orderId Unique identifier of the order.
@param packageId Unique identifier of the package for which to retrieve the label.
*/

- (void)availablePackageFulfillmentActionsWithOrderId:(NSString *)orderId packageId:(NSString *)packageId completionHandler:(void(^)(NSArray *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the package label image supplied by the carrier.
@param orderId Unique identifier of the order.
@param packageId Unique identifier of the package for which to retrieve the label.
*/

- (void)packageLabelWithOrderId:(NSString *)orderId packageId:(NSString *)packageId completionHandler:(void(^)(NSInputStream *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the details of a package of order items.
@param orderId Unique identifier of the order.
@param packageId Unique identifier of the package for which to retrieve the label.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)packageWithOrderId:(NSString *)orderId packageId:(NSString *)packageId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUFulfillmentPackage *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new physical package of order items.
@param body Properties of a physical package shipped for an order.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)createPackageWithBody:(MOZUFulfillmentPackage *)body orderId:(NSString *)orderId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUFulfillmentPackage *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more properties of a physical package of order items.
@param body Properties of a physical package shipped for an order.
@param orderId Unique identifier of the order.
@param packageId Unique identifier of the package for which to retrieve the label.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updatePackageWithBody:(MOZUFulfillmentPackage *)body orderId:(NSString *)orderId packageId:(NSString *)packageId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUFulfillmentPackage *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes a physical package of items from the specified order.
@param orderId Unique identifier of the order.
@param packageId Unique identifier of the package for which to retrieve the label.
*/

- (void)deletePackageWithOrderId:(NSString *)orderId packageId:(NSString *)packageId completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end