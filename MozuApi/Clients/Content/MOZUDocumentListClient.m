
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentListClient.h"
#import "MOZUDocumentListURLComponents.h"
#import "MozuDocumentList.h"
#import "MozuDocumentListCollection.h"


@implementation MOZUDocumentListClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetDocumentListsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex responseFields:(NSString *)responseFields {
	id url = [MOZUDocumentListURLComponents URLComponentsForGetDocumentListsOperationWithPageSize:pageSize startIndex:startIndex responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentListCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetDocumentListOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode documentListName:(NSString *)documentListName responseFields:(NSString *)responseFields {
	id url = [MOZUDocumentListURLComponents URLComponentsForGetDocumentListOperationWithDocumentListName:documentListName responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentList alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForCreateDocumentListOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUDocumentList *)body responseFields:(NSString *)responseFields {
	id url = [MOZUDocumentListURLComponents URLComponentsForCreateDocumentListOperationWithResponseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentList alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdateDocumentListOperationWithBody:(MOZUDocumentList *)body documentListName:(NSString *)documentListName responseFields:(NSString *)responseFields {
	id url = [MOZUDocumentListURLComponents URLComponentsForUpdateDocumentListOperationWithDocumentListName:documentListName responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentList alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeleteDocumentListOperationWithDocumentListName:(NSString *)documentListName {
	id url = [MOZUDocumentListURLComponents URLComponentsForDeleteDocumentListOperationWithDocumentListName:documentListName];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end