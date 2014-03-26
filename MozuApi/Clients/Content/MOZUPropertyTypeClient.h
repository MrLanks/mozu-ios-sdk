
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
#import "MOZUAuthTicket.h"
#import "MOZUPropertyTypeCollection.h"
#import "MOZUPropertyValueType.h"
#import "MOZUPropertyType.h"


@interface MOZUPropertyTypeClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**

@param pageSize 
@param startIndex 
*/

+ (MOZUClient *)clientForGetPropertyTypesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex userClaims:(MOZUUserAuthTicket *)userClaims;

/**

@param propertyTypeName 
*/

+ (MOZUClient *)clientForGetPropertyTypeOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode propertyTypeName:(NSString *)propertyTypeName userClaims:(MOZUUserAuthTicket *)userClaims;

/**
Retrieve the value types associated with a content property.
*/

+ (MOZUClient *)clientForPropertyValueTypesOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode userClaims:(MOZUUserAuthTicket *)userClaims;


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end