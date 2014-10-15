
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
#import "MOZUAddressValidationRequest.h"
#import "MOZUAddressValidationResponse.h"


@interface MOZUAddressValidationRequestClient : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Validates the customer address supplied in the request.
@param body Properties of the address to validate.
@param responseFields Use this field to include those fields which are not included by default.
*/

+ (MOZUClient *)clientForValidateAddressOperationWithBody:(MOZUAddressValidationRequest *)body responseFields:(NSString *)responseFields;


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