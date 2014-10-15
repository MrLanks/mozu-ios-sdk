/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUProductExtraURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getExtras
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/
+ (MOZUURLComponents *)URLComponentsForGetExtrasOperationWithProductCode:(NSString *)productCode;

/**
Resource Url Components for getExtraValueLocalizedDeltaPrices
@param productCode 
@param attributeFQN 
@param value 
*/
+ (MOZUURLComponents *)URLComponentsForGetExtraValueLocalizedDeltaPricesOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value;

/**
Resource Url Components for getExtraValueLocalizedDeltaPrice
@param productCode 
@param attributeFQN 
@param value 
@param currencyCode 
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetExtraValueLocalizedDeltaPriceOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value currencyCode:(NSString *)currencyCode responseFields:(NSString *)responseFields;

/**
Resource Url Components for getExtra
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetExtraOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for addExtraValueLocalizedDeltaPrice
@param productCode 
@param attributeFQN 
@param value 
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForAddExtraValueLocalizedDeltaPriceOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value responseFields:(NSString *)responseFields;

/**
Resource Url Components for addExtra
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForAddExtraOperationWithProductCode:(NSString *)productCode responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateExtraValueLocalizedDeltaPrices
@param productCode 
@param attributeFQN 
@param value 
*/
+ (MOZUURLComponents *)URLComponentsForUpdateExtraValueLocalizedDeltaPricesOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value;

/**
Resource Url Components for updateExtraValueLocalizedDeltaPrice
@param productCode 
@param attributeFQN 
@param value 
@param currencyCode 
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateExtraValueLocalizedDeltaPriceOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value currencyCode:(NSString *)currencyCode responseFields:(NSString *)responseFields;

/**
Resource Url Components for updateExtra
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateExtraOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteExtra
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteExtraOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN;

/**
Resource Url Components for deleteExtraValueLocalizedDeltaPrice
@param productCode 
@param attributeFQN 
@param value Use this field to include those fields which are not included by default.
@param currencyCode 
*/
+ (MOZUURLComponents *)URLComponentsForDeleteExtraValueLocalizedDeltaPriceOperationWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN value:(NSString *)value currencyCode:(NSString *)currencyCode;



@end