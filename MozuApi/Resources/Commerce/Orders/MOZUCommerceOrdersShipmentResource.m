
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCommerceOrdersShipmentClient.h"
#import "MOZUCommerceOrdersShipmentResource.h"


@interface MOZUCommerceOrdersShipmentResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUCommerceOrdersShipmentResource

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
Retrieves the details of the order shipment specified in the request.
@param orderId Unique identifier of the order associated with the shipment to retrieve.
@param responseFields Use this field to include those fields which are not included by default.
@param shipmentId Unique identifier of the shipment to retrieve.
*/

- (void)shipmentWithOrderId:(NSString *)orderId shipmentId:(NSString *)shipmentId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUShipment *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceOrdersShipmentClient clientForGetShipmentOperationWithOrderId:orderId shipmentId:shipmentId responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the available shipping methods applicable to the order. Typically used to display available shipping method options on the checkout page.
@param draft 
@param orderId Unique identifier of the order for the available shipment methods being retrieved.
*/

- (void)availableShipmentMethodsWithOrderId:(NSString *)orderId draft:(NSNumber *)draft completionHandler:(void(^)(NSArray<MOZUCommerceShippingRate> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceOrdersShipmentClient clientForGetAvailableShipmentMethodsOperationWithOrderId:orderId draft:draft];
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
Creates a shipment from one or more package associated with an order and assign a label and tracking number to an order shipment.
@param body List of unique identifiers for each package associated with this shipment. Not all packages must belong to the same shipment.
@param orderId Unique identifier of the order for this shipment.
*/

- (void)createPackageShipmentsWithBody:(NSArray *)body orderId:(NSString *)orderId completionHandler:(void(^)(NSArray<MOZUPackage> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceOrdersShipmentClient clientForCreatePackageShipmentsOperationWithBody:body orderId:orderId];
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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the shipment specified in the request.
@param orderId Unique identifier of the order to cancel shipment.
@param shipmentId Unique identifier of the shipment to cancel.
*/

- (void)deleteShipmentWithOrderId:(NSString *)orderId shipmentId:(NSString *)shipmentId completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceOrdersShipmentClient clientForDeleteShipmentOperationWithOrderId:orderId shipmentId:shipmentId];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end