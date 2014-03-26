
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
#import "MOZUAdminLocationInventory.h"
#import "MOZULocationInventoryAdjustment.h"
#import "MOZUAdminLocationInventoryCollection.h"


@interface MOZUAdminProductsLocationInventoryResource : NSObject


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
@param productCode 
@param sortBy 
@param startIndex 
*/

- (void)locationInventoriesWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAdminLocationInventoryCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**

@param locationCode 
@param productCode 
*/

- (void)locationInventoryWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode locationCode:(NSString *)locationCode userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAdminLocationInventory *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**

@param body 
@param productCode 
*/

- (void)addLocationInventoryWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUAdminLocationInventory> *)body productCode:(NSString *)productCode userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSArray<MOZUAdminLocationInventory> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**

@param body 
@param productCode 
*/

- (void)updateLocationInventoryWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZULocationInventoryAdjustment> *)body productCode:(NSString *)productCode userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSArray<MOZUAdminLocationInventory> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**

@param locationCode 
@param productCode 
*/

- (void)deleteLocationInventoryWithDataViewMode:(MOZUDataViewMode)dataViewMode productCode:(NSString *)productCode locationCode:(NSString *)locationCode userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end