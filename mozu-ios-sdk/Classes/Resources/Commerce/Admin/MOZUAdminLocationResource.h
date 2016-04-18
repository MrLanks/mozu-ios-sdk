
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

#import "MOZULocation.h"
#import "MOZULocationCollection.h"


@interface MOZUAdminLocationResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of all locations associated with a tenant, according to any filter and sort criteria specified in the request.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

- (void)locationsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZULocationCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the details of the location specified in the request by location code.
@param locationCode The unique, user-defined code that identifies a location. 
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/

- (void)locationWithLocationCode:(NSString *)locationCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new physical location for the tenant specified in the request header.
@param body Properties of a physical location a tenant uses to manage inventory and fulfills orders, provide store finder functionality, or both.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/

- (void)addLocationWithBody:(MOZULocation *)body responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more details of a the location specified in the request by location code.
@param body Properties of a physical location a tenant uses to manage inventory and fulfills orders, provide store finder functionality, or both.
@param locationCode The unique, user-defined code that identifies a location. 
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateLocationWithBody:(MOZULocation *)body locationCode:(NSString *)locationCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZULocation *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the location specified in the request.
@param locationCode The unique, user-defined code that identifies a location. 
*/

- (void)deleteLocationWithLocationCode:(NSString *)locationCode completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end