/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUAttributeVocabularyValueURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getAttributeVocabularyValues
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+ (MOZUURLComponents *)URLComponentsForGetAttributeVocabularyValuesOperationWithAttributeFQN:(NSString *)attributeFQN;

/**
Resource Url Components for getAttributeVocabularyValueLocalizedContents
@param attributeFQN 
@param value 
*/
+ (MOZUURLComponents *)URLComponentsForGetAttributeVocabularyValueLocalizedContentsOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value;

/**
Resource Url Components for getAttributeVocabularyValueLocalizedContent
@param attributeFQN 
@param value 
@param localeCode Language used for the entity. Currently, only "en-US" is supported.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetAttributeVocabularyValueLocalizedContentOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields;

/**
Resource Url Components for getAttributeVocabularyValue
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param value The actual unique value of the attribute vocabulary to retrieve. A single attribute must have a unique value and match the attribute's data type. If a string value returns null, the system will generate a value. The actual string content displayed shoud be stored as "Content" and actual content is required for string values.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetAttributeVocabularyValueOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addAttributeVocabularyValueLocalizedContent
@param attributeFQN 
@param value 
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForAddAttributeVocabularyValueLocalizedContentOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value responseFields:(NSString *)responseFields;

/**
Resource Url Components for addAttributeVocabularyValue
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForAddAttributeVocabularyValueOperationWithAttributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateAttributeVocabularyValues
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateAttributeVocabularyValuesOperationWithAttributeFQN:(NSString *)attributeFQN;

/**
Resource Url Components for updateAttributeVocabularyValueLocalizedContents
@param attributeFQN 
@param value 
*/
+ (MOZUURLComponents *)URLComponentsForUpdateAttributeVocabularyValueLocalizedContentsOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value;

/**
Resource Url Components for updateAttributeVocabularyValueLocalizedContent
@param attributeFQN 
@param value 
@param localeCode 
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateAttributeVocabularyValueLocalizedContentOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value localeCode:(NSString *)localeCode responseFields:(NSString *)responseFields;

/**
Resource Url Components for updateAttributeVocabularyValue
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param value The actual unique value of the attribute vocabulary value to update. A single attribute must have a unique value and match the attribute's data type. If a string value returns null, the system will generate a value. The actual string content displayed shoud be stored as "Content" and actual content is required for string values.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateAttributeVocabularyValueOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteAttributeVocabularyValue
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param value The actual unique value of the attribute vocabulary to delete. A single attribute must have a unique value and match the attribute's data type. If a string value returns null, the system will generate a value. The actual string content displayed shoud be stored as "Content" and actual content is required for string values.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteAttributeVocabularyValueOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value;

/**
Resource Url Components for deleteAttributeVocabularyValueLocalizedContent
@param attributeFQN 
@param value 
@param localeCode Language used for the entity. Currently, only "en-US" is supported.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteAttributeVocabularyValueLocalizedContentOperationWithAttributeFQN:(NSString *)attributeFQN value:(NSString *)value localeCode:(NSString *)localeCode;



@end