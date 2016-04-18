/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUEntityListURLComponents.h"

@implementation MOZUEntityListURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetEntityListsOperationWithPageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex filter:(NSString *)filter sortBy:(NSString *)sortBy responseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/entitylists/?pageSize={pageSize}&startIndex={startIndex}&filter={filter}&sortBy={sortBy}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"pageSize" : pageSize ? pageSize : @"",
		@"startIndex" : startIndex ? startIndex : @"",
		@"filter" : filter ? filter : @"",
		@"sortBy" : sortBy ? sortBy : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetEntityListOperationWithEntityListFullName:(NSString *)entityListFullName responseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/entitylists/{entityListFullName}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"entityListFullName" : entityListFullName,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForCreateEntityListOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/entitylists/?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForUpdateEntityListOperationWithEntityListFullName:(NSString *)entityListFullName responseFields:(NSString *)responseFields {
	NSString *template = @"/api/platform/entitylists/{entityListFullName}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"entityListFullName" : entityListFullName,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForDeleteEntityListOperationWithEntityListFullName:(NSString *)entityListFullName {
	NSString *template = @"/api/platform/entitylists/{entityListFullName}";
	NSDictionary *params = @{
		@"entityListFullName" : entityListFullName,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}



@end