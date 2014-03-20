
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductPropertyClient.h"
#import "MOZUProductPropertyResource.h"



@interface MOZUProductPropertyResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUProductPropertyResource


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
Retrieves a list of the property attributes configured for the product specified in the request.
@param productCode 
*/

- (void)propertiesWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSArray<MOZUAdminProductProperty> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductPropertyClient clientForGetPropertiesOperationWithDataViewMode:dataViewMode productCode:productCode userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of a property attribute configuration for the product specified in the request.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

- (void)propertyWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAdminProductProperty *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductPropertyClient clientForGetPropertyOperationWithDataViewMode:dataViewMode productCode:productCode attributeFQN:attributeFQN userClaims:userClaims];
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
Configures a property attribute for the product specified in the request.
@param body Properties of the property attribute to configure for a product.
@param productCode 
*/

- (void)addPropertyWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminProductProperty *)body productCode:(NSString *)productCode userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAdminProductProperty *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductPropertyClient clientForAddPropertyOperationWithDataViewMode:dataViewMode body:body productCode:productCode userClaims:userClaims];
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
Update one or more details of a property attribute configuration for the product specified in the request.
@param body Details of the property attribute to update for the product configuration.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode 
*/

- (void)updatePropertyWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAdminProductProperty *)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAdminProductProperty *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductPropertyClient clientForUpdatePropertyOperationWithDataViewMode:dataViewMode body:body productCode:productCode attributeFQN:attributeFQN userClaims:userClaims];
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
Deletes the configuration of a property attribute for the product specified in the request.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode 
*/

- (void)deletePropertyWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductPropertyClient clientForDeletePropertyOperationWithDataViewMode:dataViewMode productCode:productCode attributeFQN:attributeFQN userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end