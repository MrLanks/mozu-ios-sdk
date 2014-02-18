
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUAdminFacetClient.h"
#import "MOZUAdminFacetUrl.h"
#import "MozuAdminFacet.h"
#import "MozuFacetSet.h"


@implementation MOZUAdminFacetClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetFacetOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode facetId:(NSInteger)facetId validate:(NSNumber*)validate userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminFacetURL URLForGetFacetOperationWithFacetId:facetId validate:validate];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminFacet alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetFacetCategoryListOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode categoryId:(NSInteger)categoryId includeAvailable:(NSNumber*)includeAvailable validate:(NSNumber*)validate userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminFacetURL URLForGetFacetCategoryListOperationWithCategoryId:categoryId includeAvailable:includeAvailable validate:validate];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUFacetSet alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddFacetOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode facet:(MOZUfacet*)facet userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminFacetURL URLForAddFacetOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminFacet alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateFacetOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode facet:(MOZUfacet*)facet facetId:(NSInteger)facetId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminFacetURL URLForUpdateFacetOperationWithFacetId:facetId];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUAdminFacet alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteFacetByIdOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode facetId:(NSInteger)facetId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUAdminFacetURL URLForDeleteFacetByIdOperationWithFacetId:facetId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [NSString stringWithFormat:@"%lu", dataViewMode];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end