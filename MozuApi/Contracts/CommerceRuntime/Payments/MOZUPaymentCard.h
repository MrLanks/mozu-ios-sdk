
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



@protocol MOZUPaymentCard
@end


/**
	Properties of a credit card used to submit payment for an order.
*/
@interface MOZUPaymentCard : JSONModel<MOZUPaymentCard>

/**
The masked credit card number part returned from the payment gateway.
*/
@property(nonatomic) NSString* cardNumberPartOrMask;

/**
The two-digit month the credit card expires.
*/
@property(nonatomic) short expireMonth;

/**
The four-digit year the credit card expires.
*/
@property(nonatomic) short expireYear;

/**
If true, the credit card information is saved to the customer account for future use.
*/
@property(nonatomic) BOOL isCardInfoSaved;

/**
If true, the credit card is used for a recurring order payment.
*/
@property(nonatomic) NSNumber* isUsedRecurring;

/**
The name printed on the credit card.
*/
@property(nonatomic) NSString* nameOnCard;

/**
The type of credit card, such as Visa or Amex.
*/
@property(nonatomic) NSString* paymentOrCardType;

/**
Unique identifier of the credit card from the payment service.
*/
@property(nonatomic) NSString* paymentServiceCardId;

@end
