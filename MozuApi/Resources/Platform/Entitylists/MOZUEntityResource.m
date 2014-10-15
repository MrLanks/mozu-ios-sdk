
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUEntityClient.h"
#import "MOZUEntityResource.h"


@interface MOZUEntityResource()
@property(readwrite, nonatomic) MOZUAPIContext * apiContext;
@end

@implementation MOZUEntityResource

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}


-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification {
	MOZUAPIContext* cloned = [self.apiContext cloneWith:apiContextModification];
	return [self initWithAPIContext:cloned];
}

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

@param entityListFullName 
@param identifier 
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)entityWithEntityListFullName:(NSString *)entityListFullName identifier:(NSString *)identifier responseFields:(NSString *)responseFields completionHandler:(void(^)(NSObject *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUEntityClient clientForGetEntityOperationWithEntityListFullName:entityListFullName identifier:identifier responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}

/**

@param entityListFullName 
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize 
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy 
@param startIndex 
*/

- (void)entitiesWithEntityListFullName:(NSString *)entityListFullName pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex filter:(NSString *)filter sortBy:(NSString *)sortBy responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUEntityCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUEntityClient clientForGetEntitiesOperationWithEntityListFullName:entityListFullName pageSize:pageSize startIndex:startIndex filter:filter sortBy:sortBy responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
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

@param body 
@param entityListFullName 
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)insertEntityWithBody:(NSObject *)body entityListFullName:(NSString *)entityListFullName responseFields:(NSString *)responseFields completionHandler:(void(^)(NSObject *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUEntityClient clientForInsertEntityOperationWithBody:body entityListFullName:entityListFullName responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**

@param body 
@param entityListFullName 
@param identifier 
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateEntityWithBody:(NSObject *)body entityListFullName:(NSString *)entityListFullName identifier:(NSString *)identifier responseFields:(NSString *)responseFields completionHandler:(void(^)(NSObject *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUEntityClient clientForUpdateEntityOperationWithBody:body entityListFullName:entityListFullName identifier:identifier responseFields:responseFields];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**

@param entityListFullName 
@param identifier 
*/

- (void)deleteEntityWithEntityListFullName:(NSString *)entityListFullName identifier:(NSString *)identifier completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUEntityClient clientForDeleteEntityOperationWithEntityListFullName:entityListFullName identifier:identifier];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(error, response);
		}
	}];
}



@end