/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZULocationUsageURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getLocationUsages
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetLocationUsagesOperationWithResponseFields:(NSString *)responseFields;

/**
Resource Url Components for getLocationUsage
@param code Code that identifies the location usage type, which is "DS" for direct ship, "SP" for in-store pickup, or "storeFinder" for store finder.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetLocationUsageOperationWithCode:(NSString *)code responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateLocationUsage
@param code Code that identifies the location usage type, which is "DS" for direct ship, "SP" for in-store pickup, or "storeFinder" for store finder.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateLocationUsageOperationWithCode:(NSString *)code responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end