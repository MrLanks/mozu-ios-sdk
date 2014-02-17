
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


@interface MOZUDocumentTreeResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a document based on its document list and folder path in the document hierarchy.
@param documentListName The name of the document list associated with the document.
@param documentName The name of the document, which is unique within its folder.
*/

-(void)treeDocumentWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName documentName:(NSString*)documentName userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUDocument* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieve the content associated with the document, such as a product image or PDF specifications file.
@param documentListName The name of the document list associated with the document.
@param documentName The name of the document, which is unique within its folder.
*/

-(void)treeDocumentContentWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString*)documentListName documentName:(NSString*)documentName userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSInputStream* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


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
Updates the content associated with a document, such as a product image or PDF specifications file, based on the document's position in the document hierarchy.
@param stream Input output stream that delivers information.
@param documentListName The name of the document list associated with the document.
@param documentName The name of the document, which is unique within its folder.
*/

-(void)updateTreeDocumentContentWithDataViewMode:(MOZUDataViewMode)dataViewMode stream:(NSInputStream*)stream documentListName:(NSString*)documentListName documentName:(NSString*)documentName userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the content associated with a document, such as a product image or PDF specifications file.
@param stream Input output stream that delivers information.
@param documentListName The name of the document list associated with the document.
@param documentName The name of the document, which is unique within its folder.
*/

-(void)deleteTreeDocumentContentWithDataViewMode:(MOZUDataViewMode)dataViewMode stream:(NSInputStream*)stream documentListName:(NSString*)documentListName documentName:(NSString*)documentName userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end