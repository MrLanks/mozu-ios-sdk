
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
#import "MOZUProductLocalizedImage.h"



@protocol MOZUProductLocalizedContent
@end


/**
	The localized product content in the language specified by the LocaleCode.
*/
@interface MOZUProductLocalizedContent : JSONModel<MOZUProductLocalizedContent>

/**
Language used for the entity. Currently, only "en-US" is supported.
*/
@property(nonatomic) NSString * localeCode;

/**
More detailed or full product description typically used for a product details page.
*/
@property(nonatomic) NSString * productFullDescription;

/**
The descriptive brief product name.
*/
@property(nonatomic) NSString * productName;

/**
Brief description of the product typically used when the product is displayed in a list or in search results.
*/
@property(nonatomic) NSString * productShortDescription;

/**
List of product images associated with a product.
*/
@property(nonatomic) NSArray<MOZUProductLocalizedImage> *productImages;

@end

