
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/NSJSONSerialization.h>
#import "MOZUMasterCatalogClient.h"
#import "MOZUMasterCatalogUrl.h"
#import "MozuAdminMasterCatalog.h"
#import "MozuMasterCatalogCollection.h"


@implementation MOZUMasterCatalogClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetMasterCatalogsOperationWithUserClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUMasterCatalogURL URLForGetMasterCatalogsOperation];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUMasterCatalogCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetMasterCatalogOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode masterCatalogId:(NSInteger)masterCatalogId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUMasterCatalogURL URLForGetMasterCatalogOperationWithMasterCatalogId:masterCatalogId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminMasterCatalog alloc] initWithString:jsonResult error:nil];
	};

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

+(MOZUClient*)clientForUpdateMasterCatalogOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode masterCatalog:(MOZUAdminMasterCatalog*)masterCatalog masterCatalogId:(NSInteger)masterCatalogId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUMasterCatalogURL URLForUpdateMasterCatalogOperationWithMasterCatalogId:masterCatalogId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminMasterCatalog alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end