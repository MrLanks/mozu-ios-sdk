/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUTenantDataURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getDBValue
@param dbEntryQuery The database entry query string used to retrieve the record information.
*/
+ (MOZUURLComponents *)URLComponentsForGetDBValueOperationWithDbEntryQuery:(NSString *)dbEntryQuery;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for createDBValue
@param dbEntryQuery The database entry string to create.
*/
+ (MOZUURLComponents *)URLComponentsForCreateDBValueOperationWithDbEntryQuery:(NSString *)dbEntryQuery;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateDBValue
@param dbEntryQuery The database entry query string used to update the record information.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateDBValueOperationWithDbEntryQuery:(NSString *)dbEntryQuery;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteDBValue
@param dbEntryQuery The database entry string to delete.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteDBValueOperationWithDbEntryQuery:(NSString *)dbEntryQuery;



@end