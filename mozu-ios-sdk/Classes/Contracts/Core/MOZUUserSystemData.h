
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



@protocol MOZUUserSystemData
@end


/**
	System-supplied and read-only information about the user.
*/
@interface MOZUUserSystemData : JSONModel<MOZUUserSystemData>

/**
Date and time when the entity was created, represented in UTC Date/Time.
*/
@property(nonatomic) NSDate * createdOn;

/**
The total number of failed authentication attempts associated with a customer account attempting access.
*/
@property(nonatomic) unsigned char failedLoginAttemptCount;

/**
The date and time the initial login was unsuccessful. System-supplied and read only. Each time user authentication fails, an update occurs on this field. The amount of failures is calculated together for `failedLoginAttemptCount`.
*/
@property(nonatomic) NSDate * firstFailedLoginAttemptOn;

/**
Indicates if a customer account and associated data is locked. If true, the user account is locked due to multiple failed authentication attempts. The user cannot login until the account is unlocked.
*/
@property(nonatomic) BOOL isLocked;

/**
Indicates if the customer account must have the password changed on login. If true, the login action requires a password change for increased security. If false, the login does not require a password change.
*/
@property(nonatomic) BOOL isPasswordChangeRequired;

/**
Provides date and time data when the customer's account was last locked. System-supplied and read-only.
*/
@property(nonatomic) NSDate * lastLockedOn;

/**
Provides the date and time the customer last logged into the store. System-supplied and read-only.
*/
@property(nonatomic) NSDate * lastLoginOn;

/**
Date and time the customer's password was last modified. System-supplied and read-only.
*/
@property(nonatomic) NSDate * lastPasswordChangeOn;

/**
The number of login attempts remaining for the customer. The user must login successfully before this value reaches zero otherwise the account locks.
*/
@property(nonatomic) NSInteger remainingLoginAttempts;

/**
Date and time when the entity was last updated, represented in UTC Date/Time.
*/
@property(nonatomic) NSDate * updatedOn;

@end
