
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUPlatformApplicationClient.h"
#import "MOZUPlatformApplicationURLComponents.h"
#import "MozuApplicationVersionsCollection.h"
#import "MozuFolderMetadata.h"
#import "MozuFileMetadata.h"
#import "MozuPackageNamesCollection.h"


@implementation MOZUPlatformApplicationClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetAppPackageNamesOperationWithApplicationKey:(NSString *)applicationKey responseFields:(NSString *)responseFields {
	id url = [MOZUPlatformApplicationURLComponents URLComponentsForGetAppPackageNamesOperationWithApplicationKey:applicationKey responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUPackageNamesCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetAppVersionsOperationWithNsAndAppId:(NSString *)nsAndAppId responseFields:(NSString *)responseFields {
	id url = [MOZUPlatformApplicationURLComponents URLComponentsForGetAppVersionsOperationWithNsAndAppId:nsAndAppId responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUApplicationVersionsCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetPackageFileMetadataOperationWithApplicationKey:(NSString *)applicationKey filepath:(NSString *)filepath responseFields:(NSString *)responseFields {
	id url = [MOZUPlatformApplicationURLComponents URLComponentsForGetPackageFileMetadataOperationWithApplicationKey:applicationKey filepath:filepath responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFileMetadata alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetPackageMetadataOperationWithApplicationKey:(NSString *)applicationKey responseFields:(NSString *)responseFields {
	id url = [MOZUPlatformApplicationURLComponents URLComponentsForGetPackageMetadataOperationWithApplicationKey:applicationKey responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFolderMetadata alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpsertPackageFileOperationWithBody:(NSInputStream *)body applicationKey:(NSString *)applicationKey filepath:(NSString *)filepath lastModifiedTime:(NSString *)lastModifiedTime responseFields:(NSString *)responseFields {
	id url = [MOZUPlatformApplicationURLComponents URLComponentsForUpsertPackageFileOperationWithApplicationKey:applicationKey filepath:filepath lastModifiedTime:lastModifiedTime responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFileMetadata alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForRenamePackageFileOperationWithBody:(MOZURenameInfo *)body applicationKey:(NSString *)applicationKey responseFields:(NSString *)responseFields {
	id url = [MOZUPlatformApplicationURLComponents URLComponentsForRenamePackageFileOperationWithApplicationKey:applicationKey responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFileMetadata alloc] initWithString:jsonResult error:nil];
	};

	return client;
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

+ (MOZUClient *)clientForDeletePackageFileOperationWithApplicationKey:(NSString *)applicationKey filepath:(NSString *)filepath {
	id url = [MOZUPlatformApplicationURLComponents URLComponentsForDeletePackageFileOperationWithApplicationKey:applicationKey filepath:filepath];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end