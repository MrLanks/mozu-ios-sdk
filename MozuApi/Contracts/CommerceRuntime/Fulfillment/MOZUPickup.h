
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
#import "MOZUAuditInfo.h"
#import "MOZUChangeMessage.h"
#import "MOZUPickupItem.h"



@protocol MOZUPickup
@end


@interface MOZUPickup : JSONModel<MOZUPickup>

@property(nonatomic) NSArray *availableActions;

@property(nonatomic) NSDate * fulfillmentDate;

@property(nonatomic) NSString * fulfillmentLocationCode;

@property(nonatomic) NSString * id;

@property(nonatomic) NSString * status;

@property(nonatomic) MOZUAuditInfo *auditInfo;

@property(nonatomic) NSArray<MOZUChangeMessage> *changeMessages;

@property(nonatomic) NSArray<MOZUPickupItem> *items;

@end

