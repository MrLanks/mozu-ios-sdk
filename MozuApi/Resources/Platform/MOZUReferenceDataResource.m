
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUReferenceDataClient.h"
#import "MOZUReferenceDataResource.h"



@implementation MOZUReferenceDataResource


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a specific address schema based on the country code provided. This operation allows the creation of custom shipping and billing address fields.
@param countryCode The 2-letter geographic code representing the country for the physical or mailing address. Currently limited to the US.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addressSchemaWithCountryCode:(NSString *)countryCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAddressSchema *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUReferenceDataClient clientForGetAddressSchemaOperationWithCountryCode:countryCode responseFields:responseFields];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the entire list of address schemas that the system supports.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addressSchemasWithResponseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAddressSchemaCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUReferenceDataClient clientForGetAddressSchemasOperationWithResponseFields:responseFields];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of a behavior based on the behavior ID specified in the request.
@param behaviorId Unique identifier of the behavior.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)behaviorWithBehaviorId:(NSInteger)behaviorId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUBehavior *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUReferenceDataClient clientForGetBehaviorOperationWithBehaviorId:behaviorId responseFields:responseFields];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the details of the behavior category specified in the request.
@param categoryId Unique identifier of the behavior category.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)behaviorCategoryWithCategoryId:(NSInteger)categoryId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUBehaviorCategory *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUReferenceDataClient clientForGetBehaviorCategoryOperationWithCategoryId:categoryId responseFields:responseFields];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the list of behavior categories.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)behaviorCategoriesWithResponseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUBehaviorCategoryCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUReferenceDataClient clientForGetBehaviorCategoriesOperationWithResponseFields:responseFields];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves a list of application behaviors.
@param responseFields Use this field to include those fields which are not included by default.
@param userType The user type associated with the behaviors to retrieve.
*/

- (void)behaviorsWithUserType:(NSString *)userType responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUBehaviorCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUReferenceDataClient clientForGetBehaviorsOperationWithUserType:userType responseFields:responseFields];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the list of content locales the system supports. Content locales indicate the language used and the country where the language is used.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)contentLocalesWithResponseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUContentLocaleCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUReferenceDataClient clientForGetContentLocalesOperationWithResponseFields:responseFields];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the entire list of countries that the system supports.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)countriesWithResponseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCountryCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUReferenceDataClient clientForGetCountriesOperationWithResponseFields:responseFields];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the entire list of currencies that the system supports.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)currenciesWithResponseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCurrencyCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUReferenceDataClient clientForGetCurrenciesOperationWithResponseFields:responseFields];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the entire list of time zones that the system supports.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)timeZonesWithResponseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUTimeZoneCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUReferenceDataClient clientForGetTimeZonesOperationWithResponseFields:responseFields];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves the entire list of top-level internet domains that the system supports.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)topLevelDomainsWithResponseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUTopLevelDomainCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUReferenceDataClient clientForGetTopLevelDomainsOperationWithResponseFields:responseFields];
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieves an array list of all units of measure the system supports.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)unitsOfMeasureWithFilter:(NSString *)filter responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUUnitOfMeasureCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUReferenceDataClient clientForGetUnitsOfMeasureOperationWithFilter:filter responseFields:responseFields];
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