/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUShippingURLComponents.h"

@implementation MOZUShippingURLComponents

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

+ (MOZUURLComponents *)URLComponentsForGetRatesOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/catalog/storefront/shipping/request-rates?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


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