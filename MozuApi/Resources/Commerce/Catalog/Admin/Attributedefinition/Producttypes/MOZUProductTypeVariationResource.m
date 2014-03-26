
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUProductTypeVariationClient.h"
#import "MOZUProductTypeVariationResource.h"



@interface MOZUProductTypeVariationResource()
@property(readwrite, nonatomic) MOZUAPIContext *apiContext;
@end


@implementation MOZUProductTypeVariationResource


- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext {
	if (self = [super init]) {
		self.apiContext = apiContext;
		return self;
	}
	else {
		return nil;
	}
}


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
Creates the combinations of variations available for this product type.
@param body The product options configured for this product type.
@param filter A set of filter expressions representing the search parameter syntax when filtering results of a query: eq=equals, ne=not equals, gt=greater than, lt = less than, ge = greater than or equals, le = less than or equals, sw = starts with, or cont = contains. <b>For example: filter=categoryId+eq+12</b>
@param pageSize Used to create paged results from a query. Specifies the number of results to display on each page. Maximum: 200.
@param productCode 
@param productTypeId Unique identifier of the product type.
@param sortBy The property by which to sort results and whether the results appear in ascending (a-z) order, represented by 'ASC' or in descending (z-a) order, represented by 'DESC'. The sortBy parameter follows an available property. <b>For example: sortBy=productCode+asc</b>
@param startIndex Used to create paged results from a query. Indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a PageSize of 25, to get the 51st through the 75th items, use startIndex=3.
*/

- (void)generateProductVariationsWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(NSArray<MOZUAdminProductOption> *)body productTypeId:(NSInteger)productTypeId productCode:(NSString *)productCode startIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUProductVariationPagedCollection *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
 {
	MOZUClient *client = [MOZUProductTypeVariationClient clientForGenerateProductVariationsOperationWithDataViewMode:dataViewMode body:body productTypeId:productTypeId productCode:productCode startIndex:startIndex pageSize:pageSize sortBy:sortBy filter:filter userClaims:userClaims];
	client.context = self.apiContext;
	[client executeWithCompletionHandler:^(id result, NSHTTPURLResponse *response, MOZUAPIError *error) {
		if (handler != nil) {
			handler(result, error, response);
		}
	}];
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