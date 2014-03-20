
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUCustomerAttributeClient.h"
#import "MOZUCustomerAttributeURLComponents.h"
#import "MozuCustomerAttribute.h"
#import "MozuCustomerAttributeCollection.h"


@implementation MOZUCustomerAttributeClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetAccountAttributeOperationWithAccountId:(NSInteger)accountId attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket *)userClaims {
	id url = [MOZUCustomerAttributeURLComponents URLComponentsForGetAccountAttributeOperationWithAccountId:accountId attributeFQN:attributeFQN];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAttribute alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetAccountAttributesOperationWithAccountId:(NSInteger)accountId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket *)userClaims {
	id url = [MOZUCustomerAttributeURLComponents URLComponentsForGetAccountAttributesOperationWithAccountId:accountId startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAttributeCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForAddAccountAttributeOperationWithBody:(MOZUCustomerAttribute *)body accountId:(NSInteger)accountId userClaims:(MOZUUserAuthTicket *)userClaims {
	id url = [MOZUCustomerAttributeURLComponents URLComponentsForAddAccountAttributeOperationWithAccountId:accountId];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAttribute alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdateAccountAttributeOperationWithBody:(MOZUCustomerAttribute *)body accountId:(NSInteger)accountId removeMissing:(NSNumber *)removeMissing userClaims:(MOZUUserAuthTicket *)userClaims {
	id url = [MOZUCustomerAttributeURLComponents URLComponentsForUpdateAccountAttributeOperationWithAccountId:accountId removeMissing:removeMissing];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;
	client.userClaims = userClaims;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUCustomerAttribute alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end