
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
#import "MOZUUserScope.h"
#import "MOZUAuditInfo.h"



@protocol MOZUUserRole
@end


/**
	Properties of a role assigned to a user for a defined scope.
*/
@interface MOZUUserRole : JSONModel<MOZUUserRole>

/**
Unique identifier of the user role.
*/
@property(nonatomic) NSIntegerroleId;

/**
The name of the user role, such as "developer" or "administrator".
*/
@property(nonatomic) NSString *roleName;

/**
Unique identifier of the user the role is assigned to.
*/
@property(nonatomic) NSString *userId;

/**
Properties of the developer account or Mozu tenant associated with the user role.
*/
@property(nonatomic) MOZUUserScope *assignedInScope;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

@end

