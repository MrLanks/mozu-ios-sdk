
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



@protocol MOZUPublishingScope
@end


/**
	Describes the scope of the product publishing update, which can include individual product codes or all pending changes.
*/
@interface MOZUPublishingScope : JSONModel<MOZUPublishingScope>

/**
If true, publish or discard all pending product changes in the master catalog.
*/
@property(nonatomic) NSNumber * allPending;

/**
List of product codes of associated products, used for pending product changes to publish or delete and returned in a product inventory location query.
*/
@property(nonatomic) NSArray *productCodes;

/**
The Publish Set to publish
*/
@property(nonatomic) NSString * publishSetCode;

@end
