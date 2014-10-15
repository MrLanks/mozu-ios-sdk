
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAPIContext.h"

#import "MOZUEntityListCollection.h"
#import "MOZUEntityList.h"


@interface MOZUEntityListResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize 
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy 
@param startIndex 
*/

- (void)entityListsWithPageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex filter:(NSString *)filter sortBy:(NSString *)sortBy responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUEntityListCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param entityListFullName 
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)entityListWithEntityListFullName:(NSString *)entityListFullName responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUEntityList *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**

@param body 
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)createEntityListWithBody:(MOZUEntityList *)body responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUEntityList *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**

@param body 
@param entityListFullName 
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateEntityListWithBody:(MOZUEntityList *)body entityListFullName:(NSString *)entityListFullName responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUEntityList *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**

@param entityListFullName 
*/

- (void)deleteEntityListWithEntityListFullName:(NSString *)entityListFullName completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end