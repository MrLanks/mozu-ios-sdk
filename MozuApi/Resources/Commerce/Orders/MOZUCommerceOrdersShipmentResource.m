
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

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of the order shipment specified in the request.
@param orderId Unique identifier of the order associated with the shipment to retrieve.
@param shipmentId Unique identifier of the shipment to retrieve.
*/

-(void)shipmentWithOrderId:(NSString*)orderId shipmentId:(NSString*)shipmentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUShipment* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCommerceOrdersShipmentClient clientForGetShipmentOperationWithOrderId:orderId shipmentId:shipmentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the available shipping methods applicable to the order. Typically used to display available shipping method options on the checkout page.
@param orderId Unique identifier of the order for the available shipment methods being retrieved.
*/

-(void)availableShipmentMethodsWithOrderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUShippingRate>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCommerceOrdersShipmentClient clientForGetAvailableShipmentMethodsOperationWithOrderId:orderId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
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
@param packageIds List of unique identifiers for each package associated with this shipment. Not all packages must belong to the same shipment.
@param orderId Unique identifier of the order for this shipment.
*/

-(void)createPackageShipmentsWithBody:(NSString*)body orderId:(NSString*)orderId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUCommercePackage>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCommerceOrdersShipmentClient clientForCreatePackageShipmentsOperationWithPackageIds:packageIds orderId:orderId userClaims:userClaims];
	client.context = self.apiContext;
	if (body != nil) {
		client.body = body;
	}

	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
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

-(void)deleteShipmentWithOrderId:(NSString*)orderId shipmentId:(NSString*)shipmentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUCommerceOrdersShipmentClient clientForDeleteShipmentOperationWithOrderId:orderId shipmentId:shipmentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end