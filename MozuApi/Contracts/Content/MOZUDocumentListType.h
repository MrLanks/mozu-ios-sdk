
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
#import "MOZUDocumentInstallation.h"
#import "MOZUView.h"



@protocol MOZUDocumentListType
@end


@interface MOZUDocumentListType : JSONModel<MOZUDocumentListType>

@property(nonatomic) NSString * documentListTypeFQN;

@property(nonatomic) NSArray *documentTypeFQNs;

@property(nonatomic) NSNumber * enablePublishing;

@property(nonatomic) NSString * installationPackage;

@property(nonatomic) NSString * name;

@property(nonatomic) NSString * namespace;

@property(nonatomic) NSString * scopeType;

@property(nonatomic) BOOL supportsPublishing;

@property(nonatomic) NSArray *usages;

@property(nonatomic) NSString * version;

@property(nonatomic) NSArray<MOZUDocumentInstallation> *defaultDocuments;

@property(nonatomic) NSObject * metadata;

@property(nonatomic) NSArray<MOZUView> *views;

@end
