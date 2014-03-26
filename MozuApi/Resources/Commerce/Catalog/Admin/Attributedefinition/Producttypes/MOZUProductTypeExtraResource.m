
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductTypeExtraClient.h"
#import "MOZUProductTypeExtraResource.h"



@interface MOZUProductTypeExtraResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUProductTypeExtraResource


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
Retrieves a list of extras by providing the product type ID.
@param productTypeId Identifier of the product type whose list is being retrieved.
*/

- (void)extrasWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSArray<MOZUAttributeInProductType> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductTypeExtraClient clientForGetExtrasOperationWithDataViewMode:dataViewMode productTypeId:productTypeId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves an extra by providing the attribute's FQN and product type ID.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type whose extra is being retrieved.
*/

- (void)extraWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAttributeInProductType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductTypeExtraClient clientForGetExtraOperationWithDataViewMode:dataViewMode productTypeId:productTypeId attributeFQN:attributeFQN userClaims:userClaims];
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
Add or create an extra.
@param body The properties of the attribute in product type to add or create extras.
@param productTypeId Identifier of the product type to add an extra.
*/

- (void)addExtraWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAttributeInProductType *)body productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAttributeInProductType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductTypeExtraClient clientForAddExtraOperationWithDataViewMode:dataViewMode body:body productTypeId:productTypeId userClaims:userClaims];
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
Update an extra by providing the attribute's FQN and product type ID.
@param body The properties of the attribute in product type to update. The attributes exist as extras.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type whose extra is being updated.
*/

- (void)updateExtraWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAttributeInProductType *)body productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAttributeInProductType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductTypeExtraClient clientForUpdateExtraOperationWithDataViewMode:dataViewMode body:body productTypeId:productTypeId attributeFQN:attributeFQN userClaims:userClaims];
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
Delete an extra.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type whose extra is being deleted.
*/

- (void)deleteExtraWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductTypeExtraClient clientForDeleteExtraOperationWithDataViewMode:dataViewMode productTypeId:productTypeId attributeFQN:attributeFQN userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end