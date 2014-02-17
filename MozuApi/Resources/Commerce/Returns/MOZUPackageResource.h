
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
#import "MOZUCommercePackage.h"


@interface MOZUPackageResource : NSObject
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the details of a package of return replacement items.
@param packageId Unique identifier of the return replacement package to retrieve.
@param returnId Unique identifier of the return associated with the replacement package to retrieve.
*/

-(void)packageWithWithReturnId:(NSString*)returnId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCommercePackage* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;

/**
Retrieves the package label image supplied by the carrier for a return replacement.
@param packageId Unique identifier of the return replacement package for which to retrieve the label.
@param returnId Unique identifier of the return associated with the replacement package label to retrieve.
*/

-(void)packageLabelWithWithReturnId:(NSString*)returnId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(NSInputStream* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Creates a new physical package of return replacement items.
@param package Properties of the physical package for a return replacement.
@param returnId Unique identifier of the return for which to create a replacement package.
*/

-(void)createPackageWithWithPackage:(MOZUCommercePackage*)package returnId:(NSString*)returnId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCommercePackage* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more properties of a package associated with a return replacement.
@param package Properties of the return replacement package to update.
@param packageId Unique identifier of the return replacement package to update.
@param returnId Unique identifier of the return associated with the replacement package to update.
*/

-(void)updatePackageWithWithPackage:(MOZUCommercePackage*)package returnId:(NSString*)returnId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUCommercePackage* result, MOZUApiError* error, NSHTTPURLResponse* response))handler;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes a package associated with a return replacement.
@param packageId Unique identifier of the return replacement package to delete.
@param returnId Unique identifier of the return associated with the replacement package to delete.
*/

-(void)deletePackageWithWithReturnId:(NSString*)returnId packageId:(NSString*)packageId userClaims:(MOZUUserAuthTicket*)userClaims completionHandler:(void(^)(MOZUApiError* error, NSHTTPURLResponse* response))handler;



@end