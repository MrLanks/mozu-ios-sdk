
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentListClient.h"
#import "MOZUDocumentListResource.h"



@interface MOZUDocumentListResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUDocumentListResource


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
Retrieves a collection of document lists.
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param startIndex 
*/

- (void)documentListsWithDataViewMode:(MOZUDataViewMode)dataViewMode pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUDocumentListCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDocumentListClient clientForGetDocumentListsOperationWithDataViewMode:dataViewMode pageSize:pageSize startIndex:startIndex userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**
Retrieve the details of a document list by providing the list name.
@param documentListName The name of the document list.
*/

- (void)documentListWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString *)documentListName userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUDocumentList *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUDocumentListClient clientForGetDocumentListOperationWithDataViewMode:dataViewMode documentListName:documentListName userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUAPIError *error, NSHTTPURLResponse *response) {
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