
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
#import "MOZUCustomerAttribute.h"
#import "MOZUAuditInfo.h"
#import "MOZUCommerceSummary.h"
#import "MOZUCustomerContact.h"
#import "MOZUCustomerNote.h"
#import "MOZUCustomerSegment.h"



@protocol MOZUCustomerAccount
@end


/**
	Properties of the customer account.
*/
@interface MOZUCustomerAccount : JSONModel<MOZUCustomerAccount>

/**
If true, the customer prefers to receive marketing material such as newsletters or email offers.
*/
@property(nonatomic) BOOLacceptsMarketing;

/**
The legal or doing business as (DBA) or tradestyle name of the business or organization. The maximum character length is 200.
*/
@property(nonatomic) NSString *companyOrOrganization;

/**
The email address associated with the customer account.
*/
@property(nonatomic) NSString *emailAddress;

/**
Unique identifier an external system uses to identify this customer account.
*/
@property(nonatomic) NSString *externalId;

/**
The first name associated with the customer account.
*/
@property(nonatomic) NSString *firstName;

/**
Identifier of the entity.
*/
@property(nonatomic) NSIntegerid;

/**
If true, this customer account represents an anonymous shopper.
*/
@property(nonatomic) BOOLisAnonymous;

/**
The last name associated with the customer account.
*/
@property(nonatomic) NSString *lastName;

/**
Language used for the entity. Currently, only "en-US" is supported.
*/
@property(nonatomic) NSString *localeCode;

/**
If true, this customer account has tax exempt status.
*/
@property(nonatomic) BOOLtaxExempt;

/**
The tax identification number associated with the customer account.
*/
@property(nonatomic) NSString *taxId;

/**
Unique identifier of the user associated with the customer account. All customer accounts must have a defined user ID. If the shopper user is anonymous, the user ID represents a system-generated user ID string.
*/
@property(nonatomic) NSString *userId;

/**
The user name of the user associated with the customer account.
*/
@property(nonatomic) NSString *userName;

/**
Collection of customer account attributes.
*/
@property(nonatomic) NSArray<MOZUCustomerAttribute> *attributes;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

/**
Properties of the commerce summary associated with a customer account, which includes details about the shopper's most recent order, wish lists, and total order value over time.
*/
@property(nonatomic) MOZUCommerceSummary *commerceSummary;

/**
Contact information, including the contact's name, address, phone numbers, email addresses, and company (if supplied). Also indicates whether this is a billing, shipping, or billing and shipping contact.
*/
@property(nonatomic) NSArray<MOZUCustomerContact> *contacts;

/**
List of customer account notes.
*/
@property(nonatomic) NSArray<MOZUCustomerNote> *notes;

/**
List of customer segments associated with the customer account. Customer accounts can be members of any number of segments.
*/
@property(nonatomic) NSArray<MOZUCustomerSegment> *segments;

@end

