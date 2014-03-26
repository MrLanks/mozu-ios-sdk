
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

#import "MOZUAuthTicket.h"
#import "MOZUCustomerSegment.h"
#import "MOZUCustomerSegmentCollection.h"


@interface MOZUCustomerSegmentResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext *apiContext;

- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

@param filter 
@param pageSize 
@param sortBy 
@param startIndex 
*/

- (void)segmentsWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCustomerSegmentCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param identifier 
*/

- (void)segmentWithIdentifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCustomerSegment *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**

@param body 
*/

- (void)addSegmentWithBody:(MOZUCustomerSegment *)body userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCustomerSegment *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param accountIds 
@param identifier 
*/

- (void)addSegmentAccountsWithAccountIds:(NSInteger)accountIds identifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**

@param body 
@param identifier 
*/

- (void)updateSegmentWithBody:(MOZUCustomerSegment *)body identifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUCustomerSegment *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**

@param identifier 
*/

- (void)deleteSegmentWithIdentifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param accountIds 
@param identifier 
*/

- (void)deleteSegmentAccountsWithAccountIds:(NSInteger)accountIds identifier:(NSInteger)identifier userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end