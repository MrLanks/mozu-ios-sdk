
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPaymentClient.h"
#import "MOZUPaymentResource.h"



@interface MOZUPaymentResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUPaymentResource


- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext {
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
Retrieves information about all payment transactions submitted for the specified order.
@param orderId Unique identifier of the order.
*/

- (void)paymentsWithOrderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUPaymentCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUPaymentClient clientForGetPaymentsOperationWithOrderId:orderId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves information about a specific payment transaction submitted for the specified order.
@param orderId Unique identifier of the order associated with the payment transaction.
@param paymentId Unique identifier of the payment transaction submitted for the order.
*/

- (void)paymentWithOrderId:(NSString *)orderId paymentId:(NSString *)paymentId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUPayment *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUPaymentClient clientForGetPaymentOperationWithOrderId:orderId paymentId:paymentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the list of all available payment actions dependent on the order payment status by specifying the order ID.
@param orderId Unique identifier of the order associated with the payment.
@param paymentId Unique identifer of the payment for which to retrieve available actions.
*/

- (void)availablePaymentActionsWithOrderId:(NSString *)orderId paymentId:(NSString *)paymentId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSString *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUPaymentClient clientForGetAvailablePaymentActionsOperationWithOrderId:orderId paymentId:paymentId userClaims:userClaims];
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
Performs the specified action for an individual order payment transaction.
@param body The action to perform for the payment. Possible values are AuthAndCapture, AuthorizePayment, CapturePayment, VoidPayment, CreditPayment, RequestCheck, ApplyCheck, DeclineCheck.
@param orderId Unique identifier of the order associated with the payment.
@param paymentId Unique identifer of the payment for which to perform the action.
*/

- (void)performPaymentActionWithBody:(MOZUPaymentAction *)body orderId:(NSString *)orderId paymentId:(NSString *)paymentId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUOrder *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUPaymentClient clientForPerformPaymentActionOperationWithBody:body orderId:orderId paymentId:paymentId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Creates a new payment transaction for the specified order and performs the specified action.
@param body To action to perform for the newly created payment. Possible values are AuthAndCapture, AuthorizePayment, CapturePayment, VoidPayment, CreditPayment, RequestCheck, ApplyCheck, DeclineCheck.
@param orderId Unique identifier of the order for which to apply the payment.
*/

- (void)createPaymentActionWithBody:(MOZUPaymentAction *)body orderId:(NSString *)orderId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUOrder *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUPaymentClient clientForCreatePaymentActionOperationWithBody:body orderId:orderId userClaims:userClaims];
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


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end