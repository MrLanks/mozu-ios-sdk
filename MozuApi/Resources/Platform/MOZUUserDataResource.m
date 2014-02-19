
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUUserDataClient.h"
#import "MOZUUserDataResource.h"


@interface MOZUUserDataResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUUserDataResource

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

/**
Retrieves the value of a record in the Mozu database.
@param dbEntryQuery The database entry query string used to retrieve the record information.
*/

-(void)dBValueWithDbEntryQuery:(NSString*)dbEntryQuery userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSString* result, MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUUserDataClient clientForGetDBValueOperationWithDbEntryQuery:dbEntryQuery userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
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

/**
Creates a new record in the Mozu database based on the information supplied in the request.
@param value The value string to create.
@param dbEntryQuery The database entry string to create.
*/

-(void)createDBValueWithBody:(NSString*)body dbEntryQuery:(NSString*)dbEntryQuery userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUUserDataClient clientForCreateDBValueOperationWithValue:value dbEntryQuery:dbEntryQuery userClaims:userClaims];
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

/**
Updates a record in the Mozu database based on the information supplied in the request.
@param value The database value to update.
@param dbEntryQuery The database entry query string used to update the record information.
*/

-(void)updateDBValueWithBody:(NSString*)body dbEntryQuery:(NSString*)dbEntryQuery userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUUserDataClient clientForUpdateDBValueOperationWithValue:value dbEntryQuery:dbEntryQuery userClaims:userClaims];
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
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes a previously defined record in the Mozu database.
@param dbEntryQuery The database entry string to delete.
*/

-(void)deleteDBValueWithDbEntryQuery:(NSString*)dbEntryQuery userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler
 {
	MOZUClient * client = [MOZUUserDataClient clientForDeleteDBValueOperationWithDbEntryQuery:dbEntryQuery userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, MOZUApiError *error, NSHTTPURLResponse *response) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end