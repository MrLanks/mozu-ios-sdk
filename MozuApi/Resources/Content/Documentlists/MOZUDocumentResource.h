
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
#import "MOZUAPIContext.h"

#import "MOZUAuthTicket.h"
#import "MOZUDocument.h"
#import "MOZUDocumentCollection.h"


@interface MOZUDocumentResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a specific document within the specified document list by providing the document ID.
@param documentId Identifier of the document being retrieved.
@param documentListName The name of the document list associated with the document to retrieve.
*/

-(void)documentWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName documentId:(NSString*)documentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDocument* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieve the content associated with a document, such as a product image or PDF specifications file, by supplying the document ID.
@param documentId Unique identifier of the document.
@param documentListName The name of the document list associated with the document.
*/

-(void)documentContentWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName documentId:(NSString*)documentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSInputStream* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Retrieves a collection of documents according to any filter and sort criteria.
@param documentListName The name of the document list.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. You can filter a document's search results by any of its properties, including its name or folder path. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=Name+sw+Events"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

-(void)documentsWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName filter:(NSString*)filter sortBy:(NSString*)sortBy pageSize:(NSNumber*)pageSize startIndex:(NSNumber*)startIndex userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDocumentCollection* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new document in an existing list.
@param document The descriptive name of the newly created document.
@param documentListName The descriptive alphanumeric document list name being created.
*/

-(void)createDocumentWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUDocument*)body documentListName:(NSString*)documentListName userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDocument* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates a document in a document list.
@param document Properties of the document to update.
@param documentId Unique identifier of the document to update.
@param documentListName Name of the document list associated with the document.
*/

-(void)updateDocumentWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUDocument*)body documentListName:(NSString*)documentListName documentId:(NSString*)documentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDocument* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Updates the content associated with a document, such as a product image or PDF specifications file, by supplying the document ID.
@param stream Input output stream that delivers information.
@param documentId Unique identifier of the document.
@param documentListName The name of the document list associated with the document.
*/

-(void)updateDocumentContentWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSInputStream*)body documentListName:(NSString*)documentListName documentId:(NSString*)documentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a specific document based on the specified document ID.
@param documentId Identifier of the document being deleted.
@param documentListName The name of the document list associated with the document list being deleted.
*/

-(void)deleteDocumentWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName documentId:(NSString*)documentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
;
/**
Deletes the content associated with a document, such as a product image or PDF specification, by supplying the document ID.
@param documentId Unique identifier of the document.
@param documentListName The name of the document list associated with the document.
*/

-(void)deleteDocumentContentWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName documentId:(NSString*)documentId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
;


@end