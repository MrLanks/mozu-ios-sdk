
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCardClient.h"
#import "MOZUCardURLComponents.h"
#import "MozuCardCollection.h"
#import "MozuCard.h"


@implementation MOZUCardClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetAccountCardOperationWithAccountId:(NSInteger)accountId cardId:(NSString *)cardId responseFields:(NSString *)responseFields {
	id url = [MOZUCardURLComponents URLComponentsForGetAccountCardOperationWithAccountId:accountId cardId:cardId responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCard alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetAccountCardsOperationWithAccountId:(NSInteger)accountId responseFields:(NSString *)responseFields {
	id url = [MOZUCardURLComponents URLComponentsForGetAccountCardsOperationWithAccountId:accountId responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCardCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForAddAccountCardOperationWithBody:(MOZUCard *)body accountId:(NSInteger)accountId responseFields:(NSString *)responseFields {
	id url = [MOZUCardURLComponents URLComponentsForAddAccountCardOperationWithAccountId:accountId responseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCard alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdateAccountCardOperationWithBody:(MOZUCard *)body accountId:(NSInteger)accountId cardId:(NSString *)cardId responseFields:(NSString *)responseFields {
	id url = [MOZUCardURLComponents URLComponentsForUpdateAccountCardOperationWithAccountId:accountId cardId:cardId responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCard alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeleteAccountCardOperationWithAccountId:(NSInteger)accountId cardId:(NSString *)cardId {
	id url = [MOZUCardURLComponents URLComponentsForDeleteAccountCardOperationWithAccountId:accountId cardId:cardId];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end