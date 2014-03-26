
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUTaxableTerritoryClient.h"
#import "MOZUTaxableTerritoryResource.h"



@interface MOZUTaxableTerritoryResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUTaxableTerritoryResource


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
Retrieves a list of the taxable territories configured for the site.
*/

- (void)taxableTerritoriesWithUserClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSArray<MOZUTaxableTerritory> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUTaxableTerritoryClient clientForGetTaxableTerritoriesOperationWithUserClaims:userClaims];
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
Creates a new territory for which to calculate sales tax.
@param body Properties of the taxable territory to create.
*/

- (void)addTaxableTerritoryWithBody:(MOZUTaxableTerritory *)body userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUTaxableTerritory *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUTaxableTerritoryClient clientForAddTaxableTerritoryOperationWithBody:body userClaims:userClaims];
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
Updates one or more taxable territories configured for a site.
@param body Properties of the taxable territories to update.
*/

- (void)updateTaxableTerritoriesWithBody:(NSArray<MOZUTaxableTerritory> *)body userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSArray<MOZUTaxableTerritory> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUTaxableTerritoryClient clientForUpdateTaxableTerritoriesOperationWithBody:body userClaims:userClaims];
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