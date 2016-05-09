
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



@protocol MOZUBehavior
@end


/**
	Properties of an application's behavior.
*/
@interface MOZUBehavior : JSONModel<MOZUBehavior>

/**
Unique identifier of a category. 
*/
@property(nonatomic) NSInteger categoryId;

/**
Unique identifier of the source product property. For a product field it will be the name of the field. For a product attribute it will be the Attribute FQN. 
*/
@property(nonatomic) NSInteger id;

/**
If true, this application behavior is not part of the public Mozu API.
*/
@property(nonatomic) BOOL isPrivate;

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

/**
For validation purposes, the integer value must be a list of behavior IDs.
*/
@property(nonatomic) NSArray *requiresBehaviorIds;

/**
Provides a list of system roles for a specified behavior.
*/
@property(nonatomic) NSArray *systemRoles;

/**
The user types that are valid for this behavior.
*/
@property(nonatomic) NSArray *validUserTypes;

@end
