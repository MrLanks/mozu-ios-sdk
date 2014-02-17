
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductTypeVariationClient.h"
#import "MOZUProductTypeVariationUrl.h"
#import "MozuProductVariationPagedCollection.h"


@implementation MOZUProductTypeVariationClient

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

+(MOZUClient*)clientForGenerateProductVariationsOperationWithDataViewMode:(MOZUDataViewMode)dataViewMode productOptionsIn:(NSArray<MOZUAdminProductOption>*)productOptionsIn productTypeId:(NSInteger)productTypeId productCode:(NSString*)productCode startIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter userClaims:(MOZUUserAuthTicket*)userClaims {
	id url = [MOZUProductTypeVariationURL URLForGenerateProductVariationsOperationWithProductTypeId:productTypeId productCode:productCode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter];
	id verb = @"POST";
	MOZUClient* client = [[MOZUClient alloc] initWithResourceURL:url verb:verb];
	[client setHeader:MOZU_X_VOL_DATAVIEW_MODE value:dataViewMode];

	if (userClaims != nil) {
		client.userClaims = userClaims;
	}

	client.JSONParser = ^id(NSString *jsonResult) {
		return [[MOZUProductVariationPagedCollection alloc] initWithString:jsonResult error:nil];
	};

	return client;
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