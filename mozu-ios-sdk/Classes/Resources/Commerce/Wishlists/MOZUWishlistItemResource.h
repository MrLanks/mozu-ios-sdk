
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

#import "MOZUWishlistItem.h"
#import "MOZUWishlistItemCollection.h"
#import "MOZUWishlist.h"


@interface MOZUWishlistItemResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of an item in a shopper wish list.
@param responseFields Use this field to include those fields which are not included by default.
@param wishlistId Unique identifier of the wish list.
@param wishlistItemId Unique identifier of the item to remove from the shopper wish list.
*/

- (void)wishlistItemWithWishlistId:(NSString *)wishlistId wishlistItemId:(NSString *)wishlistItemId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUWishlistItem *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves a list of items in a shopper wish list according to any specified filter and sort criteria.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
@param wishlistId Unique identifier of the wish list.
*/

- (void)wishlistItemsWithWishlistId:(NSString *)wishlistId startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUWishlistItemCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieve a list of items in a customer wish list by supplying the wish list name.
@param customerAccountId The unique identifier of the customer account for which to retrieve wish lists.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param pageSize The number of results to display on each page when creating paged results from a query. The maximum value is 200.
@param responseFields Use this field to include those fields which are not included by default.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by ASC or in descending (z-a) order, represented by DESC. The sortBy parameter follows an available property. For example: "sortBy=productCode+asc"
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
@param wishlistName The name of the wish list to retrieve.
*/

- (void)wishlistItemsByWishlistNameWithCustomerAccountId:(NSInteger)customerAccountId wishlistName:(NSString *)wishlistName startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUWishlistItemCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds a product in a site's catalog as an item in a shopper wish list.
@param body Properties of an item in a shopper wish list.
@param responseFields Use this field to include those fields which are not included by default.
@param wishlistId Unique identifier of the wish list.
*/

- (void)addItemToWishlistWithBody:(MOZUWishlistItem *)body wishlistId:(NSString *)wishlistId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUWishlistItem *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the quantity of an item in a shopper wish list.
@param quantity The number of cart items in the shopper's active cart.
@param responseFields Use this field to include those fields which are not included by default.
@param wishlistId Unique identifier of the wish list.
@param wishlistItemId Unique identifier of the item to remove from the shopper wish list.
*/

- (void)updateWishlistItemQuantityWithWishlistId:(NSString *)wishlistId wishlistItemId:(NSString *)wishlistItemId quantity:(NSInteger)quantity responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUWishlistItem *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Updates the details of an item in a shopper wish list.
@param body Properties of an item in a shopper wish list.
@param responseFields Use this field to include those fields which are not included by default.
@param wishlistId Unique identifier of the wish list.
@param wishlistItemId Unique identifier of the item to remove from the shopper wish list.
*/

- (void)updateWishlistItemWithBody:(MOZUWishlistItem *)body wishlistId:(NSString *)wishlistId wishlistItemId:(NSString *)wishlistItemId responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUWishlistItem *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Removes all items associated with a shopper wish list.
@param wishlistId Unique identifier of the wish list.
*/

- (void)removeAllWishlistItemsWithWishlistId:(NSString *)wishlistId completionHandler:(void(^)(MOZUWishlist *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Removes an item from the wish list specified in the request.
@param wishlistId Unique identifier of the wish list.
@param wishlistItemId Unique identifier of the item to remove from the shopper wish list.
*/

- (void)deleteWishlistItemWithWishlistId:(NSString *)wishlistId wishlistItemId:(NSString *)wishlistItemId completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end