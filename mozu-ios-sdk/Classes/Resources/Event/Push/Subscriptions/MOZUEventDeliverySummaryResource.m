
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUEventDeliverySummaryClient.h"
#import "MOZUEventDeliverySummaryResource.h"


@interface MOZUEventDeliverySummaryResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUEventDeliverySummaryResource

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
This operation method is the external/public event entity used specifically in pull/poll event scenarios.
@param identifier Unique identifier of the customer segment to retrieve.
@param responseFields Use this field to include those fields which are not included by default.
@param subscriptionId Unique identifier for a subscription, such as subscribing tenants for an event or to receive a notification.
*/

- (void)deliveryAttemptSummaryWithSubscriptionId:(NSString *)subscriptionId identifier:(NSNumber *)identifier responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUEventDeliverySummary *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUEventDeliverySummaryClient clientForGetDeliveryAttemptSummaryOperationWithSubscriptionId:subscriptionId identifier:identifier responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a collection of data for delivery attempts of events and notifications. These are notifications sent to subscribing sites and tenants. A paged list is returned sorted and filtered per the entered parameters.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The amount is divided and displayed on the `pageCount `amount of pages. The default is 20 and maximum value is 200 per page.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy The element to sort the results by and the channel in which the results appear. Either ascending (a-z) or descending (z-a) channel. Optional.
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a `pageSize `of 25, to get the 51st through the 75th items, use `startIndex=50`.
@param subscriptionId Unique identifier for a subscription, such as subscribing tenants for an event or to receive a notification.
*/

- (void)deliveryAttemptSummariesWithSubscriptionId:(NSString *)subscriptionId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUEventDeliverySummaryCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUEventDeliverySummaryClient clientForGetDeliveryAttemptSummariesOperationWithSubscriptionId:subscriptionId startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter responseFields:responseFields];
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