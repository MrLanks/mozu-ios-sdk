
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUSearchTuningRuleSortFields.h"
#import "MOZUSearchSettings.h"
#import "MOZUSearchTuningRuleCollection.h"
#import "MOZUSearchTuningRule.h"
#import "MOZUSynonymDefinitionCollection.h"


@interface MOZUSearchClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of the specified search tuning rule.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
@param searchTuningRuleCode The unique identifier of the search tuning rule.
*/

+ (MOZUClient *)clientForGetSearchTuningRuleOperationWithSearchTuningRuleCode:(NSString *)searchTuningRuleCode responseFields:(NSString *)responseFields;

/**
admin-search Get GetSearchTuningRules description DOCUMENT_HERE 
@param filter A set of filter expressions representing the search parameters for a query: eq=equals, ne=not equals, gt=greater than, lt = less than or equals, gt = greater than or equals, lt = less than or equals, sw = starts with, or cont = contains. Optional.
@param pageSize The number of results to display on each page when creating paged results from a query. The amount is divided and displayed on the `pageCount `amount of pages. The default is 20 and maximum value is 200 per page.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
@param sortBy The element to sort the results by and the channel in which the results appear. Either ascending (a-z) or descending (z-a) channel. Optional.
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a `pageSize `of 25, to get the 51st through the 75th items, use `startIndex=50`.
*/

+ (MOZUClient *)clientForGetSearchTuningRulesOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields;

/**
admin-search Get GetSearchTuningRuleSortFields description DOCUMENT_HERE 
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/

+ (MOZUClient *)clientForGetSearchTuningRuleSortFieldsOperationWithResponseFields:(NSString *)responseFields;

/**
Get site search settings
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/

+ (MOZUClient *)clientForGetSettingsOperationWithResponseFields:(NSString *)responseFields;

/**
Retrieves a collection of synonyms definitions for product searches. Synonyms aid with determining matches for entered searches.
@param localeCode The two character country code that sets the locale, such as US for United States. Sites, tenants, and catalogs use locale codes for localizing content, such as translated product text per supported country.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/

+ (MOZUClient *)clientForGetSynonymDefinitionCollectionOperationWithLocaleCode:(NSString *)localeCode responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
admin-search Post AddSearchTuningRule description DOCUMENT_HERE 
@param body Mozu.ProductAdmin.Contracts.Search.SearchTuningRule ApiType DOCUMENT_HERE 
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/

+ (MOZUClient *)clientForAddSearchTuningRuleOperationWithBody:(MOZUSearchTuningRule *)body responseFields:(NSString *)responseFields;

/**
admin-search Post UpdateSearchTuningRuleSortFields description DOCUMENT_HERE 
@param body Mozu.ProductAdmin.Contracts.Search.SearchTuningRuleSortFields ApiType DOCUMENT_HERE 
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/

+ (MOZUClient *)clientForUpdateSearchTuningRuleSortFieldsOperationWithBody:(MOZUSearchTuningRuleSortFields *)body responseFields:(NSString *)responseFields;

/**
Updates synonym definitions for product searches. Synonyms aid with determining matches for entered searches.
@param body Collection of synonym definitions used for determining search results.
@param localeCode The two character country code that sets the locale, such as US for United States. Sites, tenants, and catalogs use locale codes for localizing content, such as translated product text per supported country.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/

+ (MOZUClient *)clientForUpdateSynonymDefinitionCollectionOperationWithBody:(MOZUSynonymDefinitionCollection *)body localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
admin-search Put UpdateSearchTuningRule description DOCUMENT_HERE 
@param body Mozu.ProductAdmin.Contracts.Search.SearchTuningRule ApiType DOCUMENT_HERE 
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
@param searchTuningRuleCode The unique identifier of the search tuning rule.
*/

+ (MOZUClient *)clientForUpdateSearchTuningRuleOperationWithBody:(MOZUSearchTuningRule *)body searchTuningRuleCode:(NSString *)searchTuningRuleCode responseFields:(NSString *)responseFields;

/**
Adds or Updates (Upsert) the Search Settings for a specific site
@param body The settings to control product search and indexing behavior.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/

+ (MOZUClient *)clientForUpdateSettingsOperationWithBody:(MOZUSearchSettings *)body responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the specified search tuning rule.
@param searchTuningRuleCode The unique identifier of the search tuning rule.
*/

+ (MOZUClient *)clientForDeleteSearchTuningRuleOperationWithSearchTuningRuleCode:(NSString *)searchTuningRuleCode;



@end