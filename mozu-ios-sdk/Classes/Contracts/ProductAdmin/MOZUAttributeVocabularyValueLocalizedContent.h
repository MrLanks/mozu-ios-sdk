
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



@protocol MOZUAttributeVocabularyValueLocalizedContent
@end


/**
	The localized text for the string value of a product attribute.
*/
@interface MOZUAttributeVocabularyValueLocalizedContent : JSONModel<MOZUAttributeVocabularyValueLocalizedContent>

/**
Language used for the entity. Currently, only "en-US" is supported.
*/
@property(nonatomic) NSString * localeCode;

/**
If the object value is a String, this value provides that string value, used by vocabulary property values, products, and options.
*/
@property(nonatomic) NSString * stringValue;

@end
