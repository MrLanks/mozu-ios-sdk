
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUEntityListClient.h"
#import "MOZUEntityListURLComponents.h"
#import "MozuEntityListCollection.h"
#import "MozuEntityList.h"


@implementation MOZUEntityListClient

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUClient *)clientForGetEntityListsOperationWithPageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex filter:(NSString *)filter sortBy:(NSString *)sortBy responseFields:(NSString *)responseFields {
	id url = [MOZUEntityListURLComponents URLComponentsForGetEntityListsOperationWithPageSize:pageSize startIndex:startIndex filter:filter sortBy:sortBy responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUEntityListCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
}

+ (MOZUClient *)clientForGetEntityListOperationWithEntityListFullName:(NSString *)entityListFullName responseFields:(NSString *)responseFields {
	id url = [MOZUEntityListURLComponents URLComponentsForGetEntityListOperationWithEntityListFullName:entityListFullName responseFields:responseFields];
	id verb = @"GET";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];


	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUEntityList alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUClient *)clientForCreateEntityListOperationWithBody:(MOZUEntityList *)body responseFields:(NSString *)responseFields {
	id url = [MOZUEntityListURLComponents URLComponentsForCreateEntityListOperationWithResponseFields:responseFields];
	id verb = @"POST";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUEntityList alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUClient *)clientForUpdateEntityListOperationWithBody:(MOZUEntityList *)body entityListFullName:(NSString *)entityListFullName responseFields:(NSString *)responseFields {
	id url = [MOZUEntityListURLComponents URLComponentsForUpdateEntityListOperationWithEntityListFullName:entityListFullName responseFields:responseFields];
	id verb = @"PUT";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	client.body = body;

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUEntityList alloc] initWithString:jsonResult error:nil];
	};

	return client;
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUClient *)clientForDeleteEntityListOperationWithEntityListFullName:(NSString *)entityListFullName {
	id url = [MOZUEntityListURLComponents URLComponentsForDeleteEntityListOperationWithEntityListFullName:entityListFullName];
	id verb = @"DELETE";
	MOZUClient *client = [[MOZUClient alloc] initWithResourceURLComponents:url verb:verb];

	return client;
}



@end