
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
#import "MOZUFraudScreenResponseData.h"



@protocol MOZUFraudScreen
@end


/**
	Mozu.PaymentService.Contracts.Response.FraudScreen ApiType DOCUMENT_HERE 
*/
@interface MOZUFraudScreen : JSONModel<MOZUFraudScreen>

/**
Unique identifier of the payment interaction from the payment gateway.
*/
@property(nonatomic) NSNumber * gatewayInteractionId;

/**
The current status of an object. This status is specific to the object including payment (New, Authorized, Captured, Declined, Failed, Voided, Credited, CheckRequested, or RolledBack), discount (Active, Scheduled, or Expired), returns (ReturnAuthorized), tenant, package (Fulfilled or NotFulfilled), application, master and product catalogs, orders (Pending, Submitted, Processing, Pending Review, Closed, or Canceled), and order validation results (Pass, Fail, Error, or Review).
*/
@property(nonatomic) NSString * status;

/**
Mozu.PaymentService.Contracts.Response.FraudScreen transactionId ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSString * transactionId;

/**
Mozu.PaymentService.Contracts.Response.FraudScreen fraudScreenResponseData ApiTypeMember DOCUMENT_HERE 
*/
@property(nonatomic) NSArray<MOZUFraudScreenResponseData> *fraudScreenResponseData;

@end
