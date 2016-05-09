
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



@protocol MOZUHttpStatus
@end


/**
	Properties for the HTTP status for an event.
*/
@interface MOZUHttpStatus : JSONModel<MOZUHttpStatus>

/**
The higher-level integer based HTTP Status Code returned by the remote endpoint
*/
@property(nonatomic) NSInteger code;

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

@end
