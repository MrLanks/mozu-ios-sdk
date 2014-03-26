
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


@interface MOZUSiteDataClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
***Always private and should not be published.***
@param dbEntryQuery ***Always private and should not be published.***
*/

+ (MOZUClient *)clientForGetDBValueOperationWithDbEntryQuery:(NSString *)dbEntryQuery;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
***Always private and should not be published.***
@param body ***Always private and should not be published.***
@param dbEntryQuery ***Always private and should not be published.***
*/

+ (MOZUClient *)clientForCreateDBValueOperationWithBody:(NSString *)body dbEntryQuery:(NSString *)dbEntryQuery;


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
***Always private and should not be published.***
@param body ***Always private and should not be published.***
@param dbEntryQuery ***Always private and should not be published.***
*/

+ (MOZUClient *)clientForUpdateDBValueOperationWithBody:(NSString *)body dbEntryQuery:(NSString *)dbEntryQuery;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
***Always private and should not be published.***
@param dbEntryQuery ***Always private and should not be published.***
*/

+ (MOZUClient *)clientForDeleteDBValueOperationWithDbEntryQuery:(NSString *)dbEntryQuery;



@end