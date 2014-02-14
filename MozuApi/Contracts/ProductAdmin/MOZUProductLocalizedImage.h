
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



@protocol MOZUProductLocalizedImage
@end


/**
	The localized product image in the language specified by the LocaleCode.
*/
@interface MOZUProductLocalizedImage : JSONModel<MOZUProductLocalizedImage>

/**
Descriptive text associated with the image or video that appears on the storefront.
*/
@property(nonatomic) NSString* altText;

/**
The identifier of the product image in the Mozu CMS. Supply a value for either the CMS ID or the Image URL parameter.
*/
@property(nonatomic) NSString* cmsId;

/**
Identifier of the localized product image.
*/
@property(nonatomic) NSNumber* id;

/**
Image title that appears on the storefront set to the language specified by the site's LocaleCode.
*/
@property(nonatomic) NSString* imageLabel;

/**
URL of the image.
*/
@property(nonatomic) NSString* imageUrl;

/**
Language used for the entity. Currently, only "en-US" is supported.
*/
@property(nonatomic) NSString* localeCode;

/**
Type of media specification required to successfully render the image, video, or other content for the product.
*/
@property(nonatomic) NSString* mediaType;

/**
Integer that represents the order of the localized product image in the sequence.
*/
@property(nonatomic) NSNumber* sequence;

/**
The physical link or URL of the product video. The physical path name is set in the language specified by the LocaleCode.
*/
@property(nonatomic) NSString* videoUrl;

@end
