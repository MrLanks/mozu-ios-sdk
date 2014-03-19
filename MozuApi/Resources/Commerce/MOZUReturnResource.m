
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUReturnClient.h"
#import "MOZUReturnResource.h"



@interface MOZUReturnResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end


@implementation MOZUReturnResource


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
Retrieves a list of all returns according to any filter and sort criteria.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

-(void)returnsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturnCollection* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUReturnClient clientForGetReturnsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a list of properties for the specified return.
@param returnId Returns the properties of the return specified in the request as well as system-supplied information.
*/

-(void)returnWithReturnId:(NSString *)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturn* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUReturnClient clientForGetReturnOperationWithReturnId:returnId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a list of the actions available to perform for the specified return based on its current state.
@param returnId Unique identifier of the return for which to retrieve available actions.
*/

-(void)availableReturnActionsWithReturnId:(NSString *)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSString * result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUReturnClient clientForGetAvailableReturnActionsOperationWithReturnId:returnId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a list of all payments submitted as part of a refund associated with a customer return.
@param returnId Returns the details of the refund payment associated with the return specified in the request.
*/

-(void)paymentsWithReturnId:(NSString *)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUPaymentCollection* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUReturnClient clientForGetPaymentsOperationWithReturnId:returnId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of a payment submitted as part of a refund associated with a customer return.
@param paymentId Unique identifier of the return payment to retrieve.
@param returnId Unique identifier of the return associated with the payment.
*/

-(void)paymentWithReturnId:(NSString *)returnId paymentId:(NSString *)paymentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUPayment* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUReturnClient clientForGetPaymentOperationWithReturnId:returnId paymentId:paymentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a list of the payment actions available to perform for the specified return when a return results in a refund to the customer.
@param paymentId Unique identifier of the payment for which to perform the action.
@param returnId Unique identifier of the return associated with the payment.
*/

-(void)availablePaymentActionsForReturnWithReturnId:(NSString *)returnId paymentId:(NSString *)paymentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSString * result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUReturnClient clientForGetAvailablePaymentActionsForReturnOperationWithReturnId:returnId paymentId:paymentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
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
Creates a return for previously fulfilled items. Each return must either be associated with an original order or a product definition to represent each returned item.
@param body Wrapper for the properties of the return to create.
*/

-(void)createReturnWithBody:(MOZUReturn*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturn* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUReturnClient clientForCreateReturnOperationWithBody:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Updates a refund payment associated with a customer return by performing the specified action.
@param body The payment action to perform for the refund payment.
@param paymentId Unique identifier of the return payment to update.
@param returnId Unique identifier of the return associated with the refund payment.
*/

-(void)performPaymentActionForReturnWithBody:(MOZUPaymentAction*)body returnId:(NSString *)returnId paymentId:(NSString *)paymentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturn* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUReturnClient clientForPerformPaymentActionForReturnOperationWithBody:body returnId:returnId paymentId:paymentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Creates a new payment for a return that results in a refund to the customer.
@param body The payment action to perform for the customer return.
@param returnId Unique identifier of the return associated with the payment action.
*/

-(void)createPaymentActionForReturnWithBody:(MOZUPaymentAction*)body returnId:(NSString *)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturn* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUReturnClient clientForCreatePaymentActionForReturnOperationWithBody:body returnId:returnId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Updates the return by performing the action specified in the request.
@param body The name of the return action to perform, such as "Reject" or "Authorize".
*/

-(void)performReturnActionsWithBody:(MOZUReturnAction*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturnCollection* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUReturnClient clientForPerformReturnActionsOperationWithBody:body userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
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
Updates one or more properties of a return for items previously shipped in a completed order.
@param body Wrapper for the array of properties to update for the return.
@param returnId Unique identifier of the return.
*/

-(void)updateReturnWithBody:(MOZUReturn*)body returnId:(NSString *)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUReturn* result, MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUReturnClient clientForUpdateReturnOperationWithBody:body returnId:returnId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
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
Deletes the return specified in the request.
@param returnId Unique identifier of the return to delete.
*/

-(void)deleteReturnWithReturnId:(NSString *)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUAPIError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUReturnClient clientForDeleteReturnOperationWithReturnId:returnId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end