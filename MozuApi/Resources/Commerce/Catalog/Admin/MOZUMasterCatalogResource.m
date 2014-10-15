
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUMasterCatalogClient.h"
#import "MOZUMasterCatalogResource.h"


@interface MOZUMasterCatalogResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUMasterCatalogResource

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
Retrieve the details of all master catalog associated with a tenant.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)masterCatalogsWithResponseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUMasterCatalogCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUMasterCatalogClient clientForGetMasterCatalogsOperationWithResponseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieve the details of the master catalog specified in the request.
@param masterCatalogId The unique identifier of the master catalog associated with the entity.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)masterCatalogWithMasterCatalogId:(NSInteger)masterCatalogId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminMasterCatalog *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUMasterCatalogClient clientForGetMasterCatalogOperationWithMasterCatalogId:masterCatalogId responseFields:responseFields];
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
Updates the product publishing mode for the master catalog specified in the request.
@param body Properties of the master catalog to update, which consists of the product publishing mode. Possible values are "Pending" which saves product updates in draft mode until they are published, and "Live" which publishes all product changes immediately.
@param masterCatalogId 
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateMasterCatalogWithBody:(MOZUAdminMasterCatalog *)body masterCatalogId:(NSInteger)masterCatalogId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminMasterCatalog *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUMasterCatalogClient clientForUpdateMasterCatalogOperationWithBody:body masterCatalogId:masterCatalogId responseFields:responseFields];
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