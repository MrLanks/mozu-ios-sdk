
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"



@protocol MOZUPublishSet
@end


/**
	Mozu.ProductAdmin.Contracts.PublishSet ApiType DOCUMENT_HERE 
*/
@interface MOZUPublishSet : JSONModel<MOZUPublishSet>

/**
The PublishSet unique identifier
*/
@property(nonatomic) NSString * code;

/**
List of product codes of associated products, used for pending product changes to publish or delete and returned in a product inventory location query.
*/
@property(nonatomic) NSArray *productCodes;

/**
The total number of products. This total may indicate the total products associate with a product type or number of products in a list.
*/
@property(nonatomic) NSInteger productCount;

@end

