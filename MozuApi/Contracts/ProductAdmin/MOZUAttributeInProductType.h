
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
#import "MOZUAttribute.h"
#import "MOZUAttributeVocabularyValueInProductType.h"



@protocol MOZUAttributeInProductType
@end


/**
	A product type is like a product template that can be reused in the product admin service. Assign a product type to have certain attributes.
*/
@interface MOZUAttributeInProductType : JSONModel<MOZUAttributeInProductType>

/**
The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
@property(nonatomic) NSString* attributeFQN;

/**
If true, this property is hidden on the storefront. If false, this property is not hidden from the storefront.
*/
@property(nonatomic) NSNumber* isHiddenProperty;

/**
If true, this entity is inherited from the base type. If false, this entity is not inherited from the base type.
*/
@property(nonatomic) NSNumber* isInheritedFromBaseType;

/**
If true, this attribute has more than one possible value.
*/
@property(nonatomic) NSNumber* isMultiValueProperty;

/**
If true, the entity is required by the admin. If false, the entity is not required by the admin.
*/
@property(nonatomic) NSNumber* isRequiredByAdmin;

/**
The sequence of this attribute within its product type.
*/
@property(nonatomic) NSNumber* order;

/**
The wrapper for the properties of the product attribute to set up or generate from the system in the product admin. Properties include namespace, attribute code, attribute sequence, site group ID, input type, value type, data type, boolean flags, and metadata key value pairs.
*/
@property(nonatomic) Attribute attributeDetail;

/**
The list of vocabulary values available for the attribute associated with the product type.
*/
@property(nonatomic) NSArray<MOZUAttributeVocabularyValueInProductType>* vocabularyValues;

@end
