
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductSearchResultClient.h"
#import "MOZUProductSearchResultUrl.h"
#import "MozuProductSearchResult.h"
#import "MozuSearchSuggestion.h"


@implementation MOZUProductSearchResultClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForSearchOperationWithWithQuery:(NSString*)query filter:(NSString*)filter facetTemplate:(NSString*)facetTemplate facetTemplateSubset:(NSString*)facetTemplateSubset facet:(NSString*)facet facetFieldRangeQuery:(NSString*)facetFieldRangeQuery facetHierPrefix:(NSString*)facetHierPrefix facetHierValue:(NSString*)facetHierValue facetHierDepth:(NSString*)facetHierDepth facetStartIndex:(NSString*)facetStartIndex facetPageSize:(NSString*)facetPageSize facetSettings:(NSString*)facetSettings facetValueFilter:(NSString*)facetValueFilter sortBy:(NSString*)sortBy pageSize:(NSNumber*)pageSize startIndex:(NSNumber*)startIndex userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductSearchResultURL URLForSearchOperationWithQuery:query filter:filter facetTemplate:facetTemplate facetTemplateSubset:facetTemplateSubset facet:facet facetFieldRangeQuery:facetFieldRangeQuery facetHierPrefix:facetHierPrefix facetHierValue:facetHierValue facetHierDepth:facetHierDepth facetStartIndex:facetStartIndex facetPageSize:facetPageSize facetSettings:facetSettings facetValueFilter:facetValueFilter sortBy:sortBy pageSize:pageSize startIndex:startIndex];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductSearchResult alloc] initWithString:jsonResult error:nil];
	}

	return client;
}

+(MOZUClient*)clientForSuggestOperationWithWithQ:(NSString*)q pageSize:(NSNumber*)pageSize userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductSearchResultURL URLForSuggestOperationWithQ:q pageSize:pageSize];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUSearchSuggestion alloc] initWithString:jsonResult error:nil];
	}

	return client;
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