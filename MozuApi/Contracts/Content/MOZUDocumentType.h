
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
#import "MOZULocalizedString.h"
#import "MOZUPropertyType.h"



@protocol MOZUDocumentType
@end


/**
	The type of documents used in the CMS such as "web_page" or "template" or "image_url".
*/
@interface MOZUDocumentType : JSONModel<MOZUDocumentType>

/**
User-defined description of the document type.
*/
@property(nonatomic) NSString * description;

/**
The name that displays for the document type.
*/
@property(nonatomic) NSString * displayName;

/**
The document type scope specifies where the the template can be used such as "Global".
*/
@property(nonatomic) NSString * documentTypeScope;

/**
The name of the document type.
*/
@property(nonatomic) NSString * name;

/**
If applicable, the name of the parent document type.
*/
@property(nonatomic) NSString * parentTypeName;

/**
List of content entity descriptions localized to the site or site group's default language.
*/
@property(nonatomic) NSArray<MOZULocalizedString> *localizedDescriptions;

/**
List of content entity display names localized to the site or site group's default language.
*/
@property(nonatomic) NSArray<MOZULocalizedString> *localizedDisplayNames;

/**
List of content property types associated with the document type.
*/
@property(nonatomic) NSArray<MOZUPropertyType> *propertyTypes;

@end

