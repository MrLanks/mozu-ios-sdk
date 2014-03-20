
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
#import "MOZUAttributeVocabularyValue.h"
#import "MOZUProductPropertyValueLocalizedContent.h"



@protocol MOZUAdminProductPropertyValue
@end


/**
	Value details for a product property attribute.
*/
@interface MOZUAdminProductPropertyValue : JSONModel<MOZUAdminProductPropertyValue>

/**
Value details for a product property attribute.
*/
@property(nonatomic) NSObject *value;

/**
Details of the vocabulary value for predefined product property attributes.
*/
@property(nonatomic) MOZUAttributeVocabularyValue *attributeVocabularyValueDetail;

/**
Content of the product property value.
*/
@property(nonatomic) MOZUProductPropertyValueLocalizedContent *content;

@end

