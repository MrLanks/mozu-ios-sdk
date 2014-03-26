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
@param countryCode 2 letter geographic code representing the country for the physical or mailing address. Currently limited to the US.
*/
+ (MOZUURLComponents *)URLComponentsForGetAddressSchemaOperationWithCountryCode:(NSString *)countryCode;

/**
Resource Url Components for getAddressSchemas
*/
+ (MOZUURLComponents *)URLComponentsForGetAddressSchemasOperation;

/**
Resource Url Components for getBehavior
@param behaviorId ***Always private and should not be published.***
*/
+ (MOZUURLComponents *)URLComponentsForGetBehaviorOperationWithBehaviorId:(NSInteger)behaviorId;

/**
Resource Url Components for getBehaviorCategories
*/
+ (MOZUURLComponents *)URLComponentsForGetBehaviorCategoriesOperation;

/**
Resource Url Components for getBehaviorCategory
@param categoryId ***Always private and should not be published.***
*/
+ (MOZUURLComponents *)URLComponentsForGetBehaviorCategoryOperationWithCategoryId:(NSInteger)categoryId;

/**
Resource Url Components for getBehaviors
@param userType 
*/
+ (MOZUURLComponents *)URLComponentsForGetBehaviorsOperationWithUserType:(NSString *)userType;

/**
Resource Url Components for getContentLocales
*/
+ (MOZUURLComponents *)URLComponentsForGetContentLocalesOperation;

/**
Resource Url Components for getCountries
*/
+ (MOZUURLComponents *)URLComponentsForGetCountriesOperation;

/**
Resource Url Components for getCurrencies
*/
+ (MOZUURLComponents *)URLComponentsForGetCurrenciesOperation;

/**
Resource Url Components for getTimeZones
*/
+ (MOZUURLComponents *)URLComponentsForGetTimeZonesOperation;

/**
Resource Url Components for getTopLevelDomains
*/
+ (MOZUURLComponents *)URLComponentsForGetTopLevelDomainsOperation;

/**
Resource Url Components for getUnitsOfMeasure
@param filter A set of filter expressions representing the search parameter syntax when filtering results of a query: eq=equals, ne=not equals, gt=greater than, lt = less than, ge = greater than or equals, le = less than or equals, sw = starts with, or cont = contains. <b>For example: filter=categoryId+eq+12</b>
*/
+ (MOZUURLComponents *)URLComponentsForGetUnitsOfMeasureOperationWithFilter:(NSString *)filter;


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