
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDiscountClient.h"
#import "MOZUDiscountResource.h"


@interface MOZUDiscountResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@property(readwrite, nonatomic) MOZUDataViewMode dataViewMode;
@end

@implementation MOZUDiscountResource

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
Retrieves a list of discounts according to any specified filter criteria and sort options.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy 
@param startIndex 
*/

- (void)discountsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUDiscountCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDiscountClient clientForGetDiscountsOperationWithDataViewMode:self.dataViewMode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the localized content specified for the specified discount.
@param discountId Unique identifier of the discount. System-supplied and read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)discountContentWithDiscountId:(NSInteger)discountId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUDiscountLocalizedContent *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDiscountClient clientForGetDiscountContentOperationWithDataViewMode:self.dataViewMode discountId:discountId responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of a single discount.
@param discountId Unique identifier of the discount. System-supplied and read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)discountWithDiscountId:(NSInteger)discountId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminDiscount *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDiscountClient clientForGetDiscountOperationWithDataViewMode:self.dataViewMode discountId:discountId responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Generates a random code for a coupon.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)generateRandomCouponWithResponseFields:(NSString *)responseFields completionHandler:(void(^)(NSString *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDiscountClient clientForGenerateRandomCouponOperationWithResponseFields:responseFields];
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
Creates a new discount or coupon to apply to a product, category, order, or shipping.
@param body Properties of the discount to create. You must specify the discount name, amount type, start date, and target.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)createDiscountWithBody:(MOZUAdminDiscount *)body responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminDiscount *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDiscountClient clientForCreateDiscountOperationWithBody:body responseFields:responseFields];
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
Updates the localizable content for the specified discount or rename the discount without modifying its other properties.
@param body The discount content to update, including the discount name.
@param discountId Unique identifier of the discount. System-supplied and read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateDiscountContentWithBody:(MOZUDiscountLocalizedContent *)body discountId:(NSInteger)discountId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUDiscountLocalizedContent *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDiscountClient clientForUpdateDiscountContentOperationWithBody:body discountId:discountId responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Updates one or more properties of a defined discount.
@param body Properties of the discount to update.
@param discountId Unique identifier of the discount to update.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateDiscountWithBody:(MOZUAdminDiscount *)body discountId:(NSInteger)discountId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminDiscount *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDiscountClient clientForUpdateDiscountOperationWithBody:body discountId:discountId responseFields:responseFields];
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
Deletes a discount specified by its discount ID.
@param discountId Unique identifier of the discount. System-supplied and read-only.
*/

- (void)deleteDiscountWithDiscountId:(NSInteger)discountId completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDiscountClient clientForDeleteDiscountOperationWithDiscountId:discountId];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end