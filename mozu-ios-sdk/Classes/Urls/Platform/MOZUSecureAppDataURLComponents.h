/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUSecureAppDataURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getDBValue
@param appKeyId 
@param dbEntryQuery The database entry string to create.
@param responseFields Filtering syntax appended to an API call to increase or decrease the amount of data returned inside a JSON object. For example, ) returns only the  and  items inside the  array of the specified product.This paramter should only be used to retrieve data. Attempting to update data using this parmater may cause data loss.
*/
+ (MOZUURLComponents *)URLComponentsForGetDBValueOperationWithAppKeyId:(NSString *)appKeyId dbEntryQuery:(NSString *)dbEntryQuery responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for createDBValue
@param appKeyId 
@param dbEntryQuery The database entry string to create.
*/
+ (MOZUURLComponents *)URLComponentsForCreateDBValueOperationWithAppKeyId:(NSString *)appKeyId dbEntryQuery:(NSString *)dbEntryQuery;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateDBValue
@param appKeyId 
@param dbEntryQuery The database entry string to create.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateDBValueOperationWithAppKeyId:(NSString *)appKeyId dbEntryQuery:(NSString *)dbEntryQuery;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteDBValue
@param appKeyId 
@param dbEntryQuery The database entry string to create.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteDBValueOperationWithAppKeyId:(NSString *)appKeyId dbEntryQuery:(NSString *)dbEntryQuery;



@end