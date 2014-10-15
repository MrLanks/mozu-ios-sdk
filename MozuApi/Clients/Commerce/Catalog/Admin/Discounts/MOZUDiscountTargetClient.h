
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
#import "MOZUDiscountTarget.h"


@interface MOZUDiscountTargetClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves the discount target, that is which products, categories, or shipping methods are eligible for the discount.
@param discountId Unique identifier of the discount. System-supplied and read only.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForGetDiscountTargetOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode discountId:(NSInteger)discountId responseFields:(NSString *)responseFields;


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

/**
Modifies properties of the discount target, for example, the dollar amount, or precentage off the price.
@param body Properties of the discount target to modify. Required properties: Target.Type. Any unspecified properties are set to null and boolean variables to false.
@param discountId Unique identifier of the discount. System-supplied and read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForUpdateDiscountTargetOperationWithBody:(MOZUDiscountTarget *)body discountId:(NSInteger)discountId responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end