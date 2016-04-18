
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
#import "MOZUAddress.h"
#import "MOZUPhone.h"



@protocol MOZUContact
@end


/**
	Contact information for an account.
*/
@interface MOZUContact : JSONModel<MOZUContact>

/**
The legal or doing business as (DBA) or tradestyle name of the business or organization. The maximum character length is 200.
*/
@property(nonatomic) NSString * companyOrOrganization;

/**
The email address of the specified user or the email address associated with the specified entity.
*/
@property(nonatomic) NSString * email;

/**
The first name of the contact. The maximum character length is 200.
*/
@property(nonatomic) NSString * firstName;

/**
Unique identifier of the source product property. For a product field it will be the name of the field. For a product attribute it will be the Attribute FQN. 
*/
@property(nonatomic) NSInteger id;

/**
The last name or surname of the contact. The maximum character length is 200.
*/
@property(nonatomic) NSString * lastNameOrSurname;

/**
The middle name or the first initial of the middle name of the contact. The maximum character length is 100.
*/
@property(nonatomic) NSString * middleNameOrInitial;

/**
All address information for the contact. This data is used to validate the address for the customer account and includes the full address.
*/
@property(nonatomic) MOZUAddress *address;

/**
List of phone numbers associated with the customer account contact. The phone numbers include area codes.
*/
@property(nonatomic) MOZUPhone *phoneNumbers;

@end

