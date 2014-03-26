
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
#import "MOZUReturnBundle.h"
#import "MOZUOrderNote.h"
#import "MOZUCommerceProduct.h"
#import "MOZUReturnReason.h"



@protocol MOZUReturnItem
@end


/**
	Properties of an item associated with a return for a previously shipped order.
*/
@interface MOZUReturnItem : JSONModel<MOZUReturnItem>

/**
Unique identifier of the item in the original completed order. All return items should be associated with a corresponding order item.
*/
@property(nonatomic) NSString * orderItemId;

@property(nonatomic) NSNumber * productLossAmount;

@property(nonatomic) NSNumber * productLossTaxAmount;

/**
The actual quantity received for the return item.
*/
@property(nonatomic) NSInteger quantityReceived;

/**
The quantity of returned items that can be returned to active product stock.
*/
@property(nonatomic) NSInteger quantityRestockable;

/**
The quantity of the item shipped to the shopper in the event of a return item replacement.
*/
@property(nonatomic) NSInteger quantityShipped;

@property(nonatomic) NSNumber * shippingLossAmount;

@property(nonatomic) NSNumber * shippingLossTaxAmount;

@property(nonatomic) NSArray<MOZUReturnBundle> *bundledProducts;

@property(nonatomic) NSArray<MOZUOrderNote> *notes;

@property(nonatomic) MOZUCommerceProduct *product;

@property(nonatomic) NSArray<MOZUReturnReason> *reasons;

@end

