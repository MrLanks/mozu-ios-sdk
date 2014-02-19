
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductReservationClient.h"
#import "MOZUProductReservationUrl.h"
#import "MozuProductReservation.h"
#import "MozuProductReservationCollection.h"


@implementation MOZUProductReservationClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUClient*)clientForGetProductReservationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductReservationURL URLForGetProductReservationsOperationWithStartIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductReservationCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+(MOZUClient*)clientForGetProductReservationOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productReservationId:(NSInteger)productReservationId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductReservationURL URLForGetProductReservationOperationWithProductReservationId:productReservationId];
	id verb = @"GET";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductReservation alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUClient*)clientForAddProductReservationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductReservation>*)body skipInventoryCheck:(NSNumber*)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductReservationURL URLForAddProductReservationsOperationWithSkipInventoryCheck:skipInventoryCheck];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUProductReservation arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}

+(MOZUClient*)clientForCommitReservationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductReservation>*)body userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductReservationURL URLForCommitReservationsOperation];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUClient*)clientForUpdateProductReservationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUProductReservation>*)body skipInventoryCheck:(NSNumber*)skipInventoryCheck userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductReservationURL URLForUpdateProductReservationsOperationWithSkipInventoryCheck:skipInventoryCheck];
	id verb = @"PUT";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		NSArray * jsonAsArray = [NSJSONSerialization JSONObjectWithData:[jsonResult dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
		return [MOZUProductReservation arrayOfModelsFromDictionaries:jsonAsArray error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUClient*)clientForDeleteProductReservationOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productReservationId:(NSInteger)productReservationId userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductReservationURL URLForDeleteProductReservationOperationWithProductReservationId:productReservationId];
	id verb = @"DELETE";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];

	NSString *dataViewModeString = [@(dataViewMode) stringValue];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewModeString];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	return client;
}



@end