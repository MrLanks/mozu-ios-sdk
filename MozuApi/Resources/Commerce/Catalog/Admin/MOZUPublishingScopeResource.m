
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPublishingScopeClient.h"
#import "MOZUPublishingScopeResource.h"


@interface MOZUPublishingScopeResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUPublishingScopeResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
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


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Deletes the draft version of product changes for each product code specified in the request.
@param publishScope Properties of the pending product changes to include in this operation.
*/

-(void)discardDraftsWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUPublishingScope*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUPublishingScopeClient clientForDiscardDraftsOperationWithDataViewMode:dataViewMode publishScope:publishScope userClaims:userClaims];
	client.context = self.apiContext;
	if (body != nil) {
		client.body = body;
	}

	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}

/**
Publishes the draft version of product changes for each product code specified in the request, and changes the product publish state to "live".
@param publishScope Properties of the pending product changes to include in this operation.
*/

-(void)publishDraftsWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUPublishingScope*)body userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUPublishingScopeClient clientForPublishDraftsOperationWithDataViewMode:dataViewMode publishScope:publishScope userClaims:userClaims];
	client.context = self.apiContext;
	if (body != nil) {
		client.body = body;
	}

	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}


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