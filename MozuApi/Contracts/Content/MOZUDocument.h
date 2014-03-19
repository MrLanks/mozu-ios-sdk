
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
#import "MOZUPropertyValue.h"



@protocol MOZUDocument
@end


/**
	The document properties that define the content used by the content management system (CMS).
*/
@interface MOZUDocument : JSONModel<MOZUDocument>

/**
The mime type associated with the document content, if applicable.
*/
@property(nonatomic) NSString * contentMimeType;

/**
The character length associated with the document content.
*/
@property(nonatomic) NSNumber * contentLength;

/**
The date and time the most recent content update was made. UTC date/time. System-supplied and read-only.
*/
@property(nonatomic) NSDate * contentUpdateDate;

/**
The name of the document list associated with the document.
*/
@property(nonatomic) NSString * documentListName;

/**
The type of document used in the CMS such as "web_page" or "template" or "image_url".
*/
@property(nonatomic) NSString * documentType;

/**
If applicable, the file extension associated with the document content.
*/
@property(nonatomic) NSString * extension;

/**
Unique identifier of the document.
*/
@property(nonatomic) NSString * id;

/**
When the document was added to the document list. System-supplied and read-only.
*/
@property(nonatomic) NSDate * insertDate;

/**
The name of the document, which is unique within its folder.
*/
@property(nonatomic) NSString * name;

/**
The current state of the document, which is Active, Draft, or Latest. Active documents are published and cannot be deleted. Querying Latest returns the most recent version of the document, regardless of whether it is published or a draft.
*/
@property(nonatomic) NSString * publishState;

/**
Date and time when the entity was last updated, represented in UTC Date/Time.
*/
@property(nonatomic) NSDate * updateDate;

/**
List of properties for the given property value.
*/
@property(nonatomic) NSArray<MOZUPropertyValue>* properties;

@end

