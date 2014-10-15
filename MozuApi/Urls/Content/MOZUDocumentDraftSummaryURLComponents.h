/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUDocumentDraftSummaryURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for listDocumentDraftSummaries
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
@param documentLists Lists that contain the document drafts.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForListDocumentDraftSummariesOperationWithPageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex documentLists:(NSString *)documentLists responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for deleteDocumentDrafts
@param documentLists List of document lists that contain documents to delete.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteDocumentDraftsOperationWithDocumentLists:(NSString *)documentLists;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for publishDocuments
@param documentLists List of document lists that contain documents to publish.
*/
+ (MOZUURLComponents *)URLComponentsForPublishDocumentsOperationWithDocumentLists:(NSString *)documentLists;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end