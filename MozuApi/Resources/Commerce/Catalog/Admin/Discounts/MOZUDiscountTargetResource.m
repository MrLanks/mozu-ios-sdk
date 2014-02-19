
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDiscountTargetClient.h"
#import "MOZUDiscountTargetResource.h"


@interface MOZUDiscountTargetResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUDiscountTargetResource

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
Retrieves the discount target, that is which products, categories, or shipping methods are eligible for the discount.
@param discountId Unique identifier of the discount. System-supplied and read only.
*/

-(void)discountTargetWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDiscountTarget* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUDiscountTargetClient clientForGetDiscountTargetOperationWithDataViewMode:dataViewMode discountId:discountId userClaims:userClaims];
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


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Modifies properties of the discount target, for example, the dollar amount, or precentage off the price.
@param discountTarget Properties of the discount target to modify. Required properties: Target.Type. Any unspecified properties are set to null and boolean variables to false.
@param discountId Unique identifier of the discount. System-supplied and read-only.
*/

-(void)updateDiscountTargetWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUDiscountTarget*)body discountId:(NSInteger)discountId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDiscountTarget* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUDiscountTargetClient clientForUpdateDiscountTargetOperationWithDataViewMode:dataViewMode discountTarget:discountTarget discountId:discountId userClaims:userClaims];
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
#pragma mark Delete Operations
#pragma mark -
//



@end