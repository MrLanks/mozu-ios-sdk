
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUBillingInfoClient.h"
#import "MOZUBillingInfoResource.h"


@interface MOZUBillingInfoResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUBillingInfoResource

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
Retrieves the billing information associated with an order.
@param draft If true, retrieve the draft version of the order billing information, which might include uncommitted changes.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)billingInfoWithOrderId:(NSString *)orderId draft:(NSNumber *)draft responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUBillingInfo *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUBillingInfoClient clientForGetBillingInfoOperationWithOrderId:orderId draft:draft responseFields:responseFields];
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

/**
Updates the billing information supplied for an order.
@param body The properties of the order billing information to update.
@param orderId Unique identifier of the order.
@param responseFields Use this field to include those fields which are not included by default.
@param updateMode Specifies whether to set the billing information by updating the original order, updating the order in draft mode, or updating the order in draft mode and then committing the changes to the original. Draft mode enables users to make incremental order changes before committing the changes to the original order. Valid values are "ApplyToOriginal," "ApplyToDraft," or "ApplyAndCommit."
@param version System-supplied integer that represents the current version of the order, which prevents users from unintentionally overriding changes to the order. When a user performs an operation for a defined order, the system validates that the version of the updated order matches the version of the order on the server. After the operation completes successfully, the system increments the version number by one.
*/

- (void)setBillingInfoWithBody:(MOZUBillingInfo *)body orderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUBillingInfo *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUBillingInfoClient clientForSetBillingInfoOperationWithBody:body orderId:orderId updateMode:updateMode version:version responseFields:responseFields];
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



@end