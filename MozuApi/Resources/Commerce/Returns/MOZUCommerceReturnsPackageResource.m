
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCommerceReturnsPackageClient.h"
#import "MOZUCommerceReturnsPackageResource.h"



@interface MOZUCommerceReturnsPackageResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUCommerceReturnsPackageResource


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
Retrieves the details of a package of return replacement items.
@param packageId Unique identifier of the return replacement package to retrieve.
@param returnId Unique identifier of the return associated with the replacement package to retrieve.
*/

- (void)packageWithReturnId:(NSString *)returnId packageId:(NSString *)packageId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCommercePackage *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceReturnsPackageClient clientForGetPackageOperationWithReturnId:returnId packageId:packageId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the package label image supplied by the carrier for a return replacement.
@param packageId Unique identifier of the return replacement package for which to retrieve the label.
@param returnId Unique identifier of the return associated with the replacement package label to retrieve.
*/

- (void)packageLabelWithReturnId:(NSString *)returnId packageId:(NSString *)packageId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSInputStream *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceReturnsPackageClient clientForGetPackageLabelOperationWithReturnId:returnId packageId:packageId userClaims:userClaims];
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
Creates a new physical package of return replacement items.
@param body Properties of the physical package for a return replacement.
@param returnId Unique identifier of the return for which to create a replacement package.
*/

- (void)createPackageWithBody:(MOZUCommercePackage *)body returnId:(NSString *)returnId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCommercePackage *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceReturnsPackageClient clientForCreatePackageOperationWithBody:body returnId:returnId userClaims:userClaims];
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
Updates one or more properties of a package associated with a return replacement.
@param body Properties of the return replacement package to update.
@param packageId Unique identifier of the return replacement package to update.
@param returnId Unique identifier of the return associated with the replacement package to update.
*/

- (void)updatePackageWithBody:(MOZUCommercePackage *)body returnId:(NSString *)returnId packageId:(NSString *)packageId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCommercePackage *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceReturnsPackageClient clientForUpdatePackageOperationWithBody:body returnId:returnId packageId:packageId userClaims:userClaims];
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
Deletes a package associated with a return replacement.
@param packageId Unique identifier of the return replacement package to delete.
@param returnId Unique identifier of the return associated with the replacement package to delete.
*/

- (void)deletePackageWithReturnId:(NSString *)returnId packageId:(NSString *)packageId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUCommerceReturnsPackageClient clientForDeletePackageOperationWithReturnId:returnId packageId:packageId userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end