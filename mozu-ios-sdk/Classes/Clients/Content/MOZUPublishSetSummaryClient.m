
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPublishSetSummaryClient.h"
#import "MOZUPublishSetSummaryURLComponents.h"
#import "MozuDocumentDraftSummaryPagedCollection.h"
#import "MozuPublishSetSummaryPagedCollection.h"


@implementation MOZUPublishSetSummaryClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetPublishSetsOperationWithPageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex responseFields:(NSString *)responseFields {
	id url = [MOZUPublishSetSummaryURLComponents URLComponentsForGetPublishSetsOperationWithPageSize:pageSize startIndex:startIndex responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUPublishSetSummaryPagedCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetPublishSetItemsOperationWithCode:(NSString *)code pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields {
	id url = [MOZUPublishSetSummaryURLComponents URLComponentsForGetPublishSetItemsOperationWithCode:code pageSize:pageSize startIndex:startIndex sortBy:sortBy filter:filter responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentDraftSummaryPagedCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeletePublishSetOperationWithCode:(NSString *)code shouldDiscard:(NSNumber *)shouldDiscard responseFields:(NSString *)responseFields {
	id url = [MOZUPublishSetSummaryURLComponents URLComponentsForDeletePublishSetOperationWithCode:code shouldDiscard:shouldDiscard responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForAddPublishSetItemsOperationWithBody:(NSArray<MOZUAddOrDeletePublishItem> *)body code:(NSString *)code responseFields:(NSString *)responseFields {
	id url = [MOZUPublishSetSummaryURLComponents URLComponentsForAddPublishSetItemsOperationWithCode:code responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end