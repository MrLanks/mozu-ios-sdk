
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductReservationClient.h"
#import "MOZUProductReservationResource.h"


@interface MOZUProductReservationResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@property(readwrite, nonatomic) MOZUDataViewMode dataViewMode;
@end

@implementation MOZUProductReservationResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext dataViewMode:(MOZUDataViewMode) dataViewMode {
	if (self = [super init]) {
		self.apiContext = apiContext;
		self.dataViewMode = dataViewMode;
		return self;
	}
	else {
		return nil;
	}
}

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification {
	MOZUAPIContext* cloned = [self.apiContext cloneWith:apiContextModification];
	return [self initWithAPIContext:cloned dataViewMode:self.dataViewMode];
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of product reservations according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy 
@param startIndex 
*/

- (void)productReservationsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUProductReservationCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductReservationClient clientForGetProductReservationsOperationWithDataViewMode:self.dataViewMode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of a product reservation.
@param productReservationId Unique identifier of the product reservation.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)productReservationWithProductReservationId:(NSInteger)productReservationId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUProductReservation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductReservationClient clientForGetProductReservationOperationWithDataViewMode:self.dataViewMode productReservationId:productReservationId responseFields:responseFields];
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
Creates a new product reservation for a product. This action places a hold on the product inventory for the quantity specified during the ordering process.
@param body Details of the product reservations to add.
@param skipInventoryCheck If true, skip the process to validate inventory when creating this product reservation.
*/

- (void)addProductReservationsWithBody:(NSArray<MOZUProductReservation> *)body skipInventoryCheck:(NSNumber *)skipInventoryCheck completionHandler:(void(^)(NSArray<MOZUProductReservation> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductReservationClient clientForAddProductReservationsOperationWithDataViewMode:self.dataViewMode body:body skipInventoryCheck:skipInventoryCheck];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Commits a product reservation to decrement the product's inventory by the quantity specified then release the reservation once the order process completed successfully.
@param body List of unique identifiers of the reservations to commit.
*/

- (void)commitReservationsWithBody:(NSArray<MOZUProductReservation> *)body completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductReservationClient clientForCommitReservationsOperationWithDataViewMode:self.dataViewMode body:body];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates an existing product reservation for a product.
@param body Properties of the product reservations to update.
@param skipInventoryCheck If true, skip the inventory validation process when updating this product reservation.
*/

- (void)updateProductReservationsWithBody:(NSArray<MOZUProductReservation> *)body skipInventoryCheck:(NSNumber *)skipInventoryCheck completionHandler:(void(^)(NSArray<MOZUProductReservation> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductReservationClient clientForUpdateProductReservationsOperationWithDataViewMode:self.dataViewMode body:body skipInventoryCheck:skipInventoryCheck];
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
Deletes a product reservation. For example, delete a reservation when an order is not processed to return the product quantity back to inventory.
@param productReservationId Unique identifier of the reservation.
*/

- (void)deleteProductReservationWithProductReservationId:(NSInteger)productReservationId completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductReservationClient clientForDeleteProductReservationOperationWithDataViewMode:self.dataViewMode productReservationId:productReservationId];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end