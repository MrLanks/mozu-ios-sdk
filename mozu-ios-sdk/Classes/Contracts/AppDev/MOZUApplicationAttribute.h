
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



@protocol MOZUApplicationAttribute
@end


/**
	Mozu.AppDev.Contracts.ApplicationAttribute ApiType DOCUMENT_HERE 
*/
@interface MOZUApplicationAttribute : JSONModel<MOZUApplicationAttribute>

/**
Comma delimited list of attribute codes.
*/
@property(nonatomic) NSString * attributeCodes;

/**
json representation of attribute definitions
*/
@property(nonatomic) NSString * attributeJson;

/**
Mozu.AppDev.Contracts.ApplicationAttribute isAppliedToBase ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) BOOL isAppliedToBase;

/**
Mozu.AppDev.Contracts.ApplicationAttribute packageId ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSInteger packageId;

/**
Will contain ProductTypeCollection if Product, else AttributeSet
*/
@property(nonatomic) NSString * productTypeJson;

/**
Source Tenant Id
*/
@property(nonatomic) NSInteger sourceTenantId;

/**
Source Tenant Name
*/
@property(nonatomic) NSString * sourceTenantName;

/**
Customer, Order, or Product
*/
@property(nonatomic) NSString * subsystem;

/**
Collection of attributes that may be paged list or a list, depending on the usage per object and API type. 
*/
@property(nonatomic) NSArray<MOZUAttribute> *attributes;

@end

