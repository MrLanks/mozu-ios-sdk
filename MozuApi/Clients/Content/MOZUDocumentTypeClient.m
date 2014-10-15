
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUDocumentTypeClient.h"
#import "MOZUDocumentTypeURLComponents.h"
#import "MozuDocumentType.h"
#import "MozuDocumentTypeCollection.h"


@implementation MOZUDocumentTypeClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetDocumentTypesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex responseFields:(NSString *)responseFields {
	id url = [MOZUDocumentTypeURLComponents URLComponentsForGetDocumentTypesOperationWithPageSize:pageSize startIndex:startIndex responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentTypeCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetDocumentTypeOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode documentTypeName:(NSString *)documentTypeName responseFields:(NSString *)responseFields {
	id url = [MOZUDocumentTypeURLComponents URLComponentsForGetDocumentTypeOperationWithDocumentTypeName:documentTypeName responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentType alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForCreateDocumentTypeOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUDocumentType *)body responseFields:(NSString *)responseFields {
	id url = [MOZUDocumentTypeURLComponents URLComponentsForCreateDocumentTypeOperationWithResponseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentType alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdateDocumentTypeOperationWithBody:(MOZUDocumentType *)body documentTypeName:(NSString *)documentTypeName responseFields:(NSString *)responseFields {
	id url = [MOZUDocumentTypeURLComponents URLComponentsForUpdateDocumentTypeOperationWithDocumentTypeName:documentTypeName responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUDocumentType alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end