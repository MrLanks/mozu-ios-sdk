
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



@protocol MOZUUserProfile
@end


/**
	Properties of the admin user profile.
*/
@interface MOZUUserProfile : JSONModel<MOZUUserProfile>

/**
The email address of the specified user or the email address associated with the specified entity.
*/
@property(nonatomic) NSString *emailAddress;

/**
The first name of the contact. The maximum character length is 200.
*/
@property(nonatomic) NSString *firstName;

/**
The last name or surname of the contact. The maximum character length is 200.
*/
@property(nonatomic) NSString *lastName;

/**
Identifier of the user.
*/
@property(nonatomic) NSString *userId;

/**
The user name associated with the user profile.
*/
@property(nonatomic) NSString *userName;

@end

