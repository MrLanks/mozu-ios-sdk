
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCommerceReturnsShipmentClient.h"
#import "MOZUCommerceReturnsShipmentResource.h"


@interface MOZUCommerceReturnsShipmentResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUCommerceReturnsShipmentResource

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

-(void)shipmentWithReturnId:(NSString*)returnId shipmentId:(NSString*)shipmentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUShipment* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCommerceReturnsShipmentClient clientForGetShipmentOperationWithReturnId:returnId shipmentId:shipmentId userClaims:userClaims];
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

-(void)createPackageShipmentsWithPackageIds:(packageIds)packageIds returnId:(NSString*)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSArray<MOZUCommercePackage>* result, MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCommerceReturnsShipmentClient clientForCreatePackageShipmentsOperationWithPackageIds:packageIds returnId:returnId userClaims:userClaims];
	client.context = self.apiContext;
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

-(void)deleteShipmentWithReturnId:(NSString*)returnId shipmentId:(NSString*)shipmentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler {
	MOZUClient * client = [MOZUCommerceReturnsShipmentClient clientForDeleteShipmentOperationWithReturnId:returnId shipmentId:shipmentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end