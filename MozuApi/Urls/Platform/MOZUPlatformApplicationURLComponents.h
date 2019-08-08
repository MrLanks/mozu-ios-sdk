/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUPlatformApplicationURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getAppPackageNames
@param applicationKey 
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
*/
+ (MOZUURLComponents *)URLComponentsForGetAppPackageNamesOperationWithApplicationKey:(NSString *)applicationKey responseFields:(NSString *)responseFields;

/**
Resource Url Components for getAppVersions
@param nsAndAppId 
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
*/
+ (MOZUURLComponents *)URLComponentsForGetAppVersionsOperationWithNsAndAppId:(NSString *)nsAndAppId responseFields:(NSString *)responseFields;

/**
Resource Url Components for getPackageFileMetadata
@param applicationKey 
@param filepath 
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
*/
+ (MOZUURLComponents *)URLComponentsForGetPackageFileMetadataOperationWithApplicationKey:(NSString *)applicationKey filepath:(NSString *)filepath responseFields:(NSString *)responseFields;

/**
Resource Url Components for getPackageMetadata
@param applicationKey 
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
*/
+ (MOZUURLComponents *)URLComponentsForGetPackageMetadataOperationWithApplicationKey:(NSString *)applicationKey responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for upsertPackageFile
@param applicationKey 
@param filepath 
@param lastModifiedTime 
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
*/
+ (MOZUURLComponents *)URLComponentsForUpsertPackageFileOperationWithApplicationKey:(NSString *)applicationKey filepath:(NSString *)filepath lastModifiedTime:(NSString *)lastModifiedTime responseFields:(NSString *)responseFields;

/**
Resource Url Components for renamePackageFile
@param applicationKey 
@param responseFields A list or array of fields returned for a call. These fields may be customized and may be used for various types of data calls in Mozu. For example, responseFields are returned for retrieving or updating attributes, carts, and messages in Mozu.
*/
+ (MOZUURLComponents *)URLComponentsForRenamePackageFileOperationWithApplicationKey:(NSString *)applicationKey responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deletePackageFile
@param applicationKey 
@param filepath 
*/
+ (MOZUURLComponents *)URLComponentsForDeletePackageFileOperationWithApplicationKey:(NSString *)applicationKey filepath:(NSString *)filepath;



@end