
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
#import "MOZUAppVersion.h"



@protocol MOZUApplicationSummary
@end


/**
	Mozu.AppDev.Contracts.ApplicationSummary ApiType DOCUMENT_HERE 
*/
@interface MOZUApplicationSummary : JSONModel<MOZUApplicationSummary>

/**
Unique identifier of an app available in your Mozu tenant or within Mozu Dev Center. This ID is unique across all apps installed, initialized, and enabled in the Mozu Admin and those in development through the Dev Center Console.
*/
@property(nonatomic) NSString * appId;

/**
The AppKey is a runtime type.
*/
@property(nonatomic) NSString * appKey;

/**
Mozu.AppDev.Contracts.ApplicationSummary applicationId ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSInteger applicationId;

/**
Mozu.AppDev.Contracts.ApplicationSummary applicationNamespace ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSString * applicationNamespace;

/**
Mozu.AppDev.Contracts.ApplicationSummary applicationStatusId ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSInteger applicationStatusId;

/**
Mozu.AppDev.Contracts.ApplicationSummary applicationStatusName ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSString * applicationStatusName;

/**
Mozu.AppDev.Contracts.ApplicationSummary applicationTypeId ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSInteger applicationTypeId;

/**
Mozu.AppDev.Contracts.ApplicationSummary appSchemeVersion ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) unsigned char appSchemeVersion;

/**
Mozu.AppDev.Contracts.ApplicationSummary hasVersions ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) BOOL hasVersions;

/**
The display name of the source product property. For a product field it will be the display name of the field. For a product attribute it will be the Attribute Name.
*/
@property(nonatomic) NSString * name;

/**
The AppKey is a runtime type. This only applies for themes that inherit from another theme.
*/
@property(nonatomic) NSString * parentAppKey;

/**
Mozu.AppDev.Contracts.ApplicationSummary parentName ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSString * parentName;

/**
Mozu.AppDev.Contracts.ApplicationSummary releasePackageId ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSInteger releasePackageId;

/**
Mozu.AppDev.Contracts.ApplicationSummary releasePackageName ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSString * releasePackageName;

/**
Mozu.AppDev.Contracts.ApplicationSummary updateAvailable ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) BOOL updateAvailable;

/**
The AppKey is a runtime type. This only applies for themes that inherit from another theme. It shows the most current update available.
*/
@property(nonatomic) NSString * updateParentAppKey;

/**
Mozu.AppDev.Contracts.ApplicationSummary applicationVersion ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) MOZUAppVersion *applicationVersion;

@end

