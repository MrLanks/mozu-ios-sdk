
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

#import "MOZUCredit.h"
#import "MOZUCreditCollection.h"


@interface MOZUCreditResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of store credits applied to customer accounts, according any filter and sort criteria specified in the request.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

- (void)creditsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCreditCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the details of a store credit applied to a customer account.
@param code User-defined code that uniqely identifies the channel group.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)creditWithCode:(NSString *)code responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCredit *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new store credit for the customer account specified in the request.
@param body Properties of the store credit of gift card applied to a customer account. At this time, gift card functionality is reserved for future use.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addCreditWithBody:(MOZUCredit *)body responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCredit *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Associates an unclaimed customer credit with the shopper user authenticated in the request header.
@param code User-defined code that uniqely identifies the channel group.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)associateCreditToShopperWithCode:(NSString *)code responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCredit *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
customer-credits Put ResendCreditCreatedEmail description DOCUMENT_HERE 
@param code User-defined code that uniqely identifies the channel group.
*/

- (void)resendCreditCreatedEmailWithCode:(NSString *)code completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Updates one or more properties of a defined store credit applied to a customer account.
@param body Properties of the store credit of gift card applied to a customer account. At this time, gift card functionality is reserved for future use.
@param code User-defined code that uniqely identifies the channel group.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateCreditWithBody:(MOZUCredit *)body code:(NSString *)code responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUCredit *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a store credit previously applied to a customer account.
@param code User-defined code that uniqely identifies the channel group.
*/

- (void)deleteCreditWithCode:(NSString *)code completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end