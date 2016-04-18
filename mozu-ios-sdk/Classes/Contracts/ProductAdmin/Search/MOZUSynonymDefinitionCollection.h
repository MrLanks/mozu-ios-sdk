
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
#import "MOZUSynonymDefinition.h"



@protocol MOZUSynonymDefinitionCollection
@end


/**
	Collection of synonym definitions used for determining search results.
*/
@interface MOZUSynonymDefinitionCollection : JSONModel<MOZUSynonymDefinitionCollection>

/**
Language used for the entity. Currently, only "en-US" is supported.
*/
@property(nonatomic) NSString * localeCode;

/**
Unique identifier for the site. This ID is used at all levels of a store, catalog, and tenant to associate objects to a site.
*/
@property(nonatomic) NSInteger siteId;

/**
Unique identifier of the Mozu tenant.
*/
@property(nonatomic) NSInteger tenantId;

/**
List of mappings for this definition.
*/
@property(nonatomic) NSArray<MOZUSynonymDefinition> *synonymDefinitions;

@end

