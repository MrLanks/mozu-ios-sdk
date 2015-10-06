
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCommerceOrdersPackageClient.h"
#import "MOZUCommerceOrdersPackageResource.h"


@interface MOZUCommerceOrdersPackageResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUCommerceOrdersPackageResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}


-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification {
	MOZUAPIContext* cloned = [self.apiContext cloneWith:apiContextModification];
	return [self initWithAPIContext:cloned];
}

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
 {
	MOZUClient *client = [MOZUCommerceOrdersPackageClient clientForGetAvailablePackageFulfillmentActionsOperationWithOrderId:orderId packageId:packageId];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the package label image supplied by the carrier.
@param orderId Unique identifier of the order.
@param packageId Unique identifier of the package for which to retrieve the label.
*/

- (void)packageLabelWithOrderId:(NSString *)orderId packageId:(NSString *)packageId completionHandler:(void(^)(NSInputStream *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceOrdersPackageClient clientForGetPackageLabelOperationWithOrderId:orderId packageId:packageId];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of a package of order items.
@param orderId Unique identifier of the order.
@param packageId Unique identifier of the package for which to retrieve the label.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)packageWithOrderId:(NSString *)orderId packageId:(NSString *)packageId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUPackage *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceOrdersPackageClient clientForGetPackageOperationWithOrderId:orderId packageId:packageId responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


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

- (void)createPackageWithBody:(MOZUPackage *)body orderId:(NSString *)orderId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUPackage *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceOrdersPackageClient clientForCreatePackageOperationWithBody:body orderId:orderId responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


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

- (void)updatePackageWithBody:(MOZUPackage *)body orderId:(NSString *)orderId packageId:(NSString *)packageId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUPackage *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceOrdersPackageClient clientForUpdatePackageOperationWithBody:body orderId:orderId packageId:packageId responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


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
 {
	MOZUClient *client = [MOZUCommerceOrdersPackageClient clientForDeletePackageOperationWithOrderId:orderId packageId:packageId];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end