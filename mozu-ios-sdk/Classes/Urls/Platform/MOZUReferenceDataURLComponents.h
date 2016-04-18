/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUReferenceDataURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getAddressSchema
@param countryCode The 2-letter geographic code representing the country for the physical or mailing address. Currently limited to the US.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetAddressSchemaOperationWithCountryCode:(NSString *)countryCode responseFields:(NSString *)responseFields;

/**
Resource Url Components for getAddressSchemas
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetAddressSchemasOperationWithResponseFields:(NSString *)responseFields;

/**
Resource Url Components for getBehavior
@param behaviorId Unique identifier of the behavior.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetBehaviorOperationWithBehaviorId:(NSInteger)behaviorId responseFields:(NSString *)responseFields;

/**
Resource Url Components for getBehaviorCategory
@param categoryId Unique identifier of the category to modify.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetBehaviorCategoryOperationWithCategoryId:(NSInteger)categoryId responseFields:(NSString *)responseFields;

/**
Resource Url Components for getBehaviorCategories
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetBehaviorCategoriesOperationWithResponseFields:(NSString *)responseFields;

/**
Resource Url Components for getBehaviors
@param userType The user type associated with the behaviors to retrieve.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetBehaviorsOperationWithUserType:(NSString *)userType responseFields:(NSString *)responseFields;

/**
Resource Url Components for getContentLocales
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetContentLocalesOperationWithResponseFields:(NSString *)responseFields;

/**
Resource Url Components for getCountries
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetCountriesOperationWithResponseFields:(NSString *)responseFields;

/**
Resource Url Components for getCountriesWithStates
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/
+ (MOZUURLComponents *)URLComponentsForGetCountriesWithStatesOperationWithResponseFields:(NSString *)responseFields;

/**
Resource Url Components for getCurrencies
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetCurrenciesOperationWithResponseFields:(NSString *)responseFields;

/**
Resource Url Components for getTimeZones
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetTimeZonesOperationWithResponseFields:(NSString *)responseFields;

/**
Resource Url Components for getTopLevelDomains
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetTopLevelDomainsOperationWithResponseFields:(NSString *)responseFields;

/**
Resource Url Components for getUnitsOfMeasure
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetUnitsOfMeasureOperationWithFilter:(NSString *)filter responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end