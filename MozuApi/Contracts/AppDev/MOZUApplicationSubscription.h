
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
#import "MOZUAppDevEvent.h"



@protocol MOZUApplicationSubscription
@end


/**
	Mozu.AppDev.Contracts.ApplicationSubscription ApiType DOCUMENT_HERE 
*/
@interface MOZUApplicationSubscription : JSONModel<MOZUApplicationSubscription>

/**
The End Point where the event information will be sent to when the event is fired.
*/
@property(nonatomic) NSString * applicationEndPoint;

/**
The unique identifier of an ApplicationVersionEvent record.
*/
@property(nonatomic) NSInteger applicationSubscriptionId;

/**
Mozu.AppDev.Contracts.ApplicationSubscription noCallback ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) BOOL noCallback;

/**
Mozu.AppDev.Contracts.ApplicationSubscription packageId ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSInteger packageId;

/**
Mozu.AppDev.Contracts.ApplicationSubscription events ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSArray<MOZUAppDevEvent> *events;

@end

