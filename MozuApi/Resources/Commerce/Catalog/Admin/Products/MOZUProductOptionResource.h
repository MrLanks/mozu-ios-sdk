
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "MOZUClient.h"
#import "MOZUAPIContext.h"

#import "MOZUAdminProductOption.h"


@interface MOZUProductOptionResource : NSObject


@property(readonly, nonatomic) MOZUDataViewMode dataViewMode;
@property(readonly, nonatomic) MOZUAPIContext * apiContext;

-(id)initWithAPIContext:(MOZUAPIContext *)apiContext;
-(id)initWithAPIContext:(MOZUAPIContext *)apiContext dataViewMode:(MOZUDataViewMode)dataViewMode;

-(id)cloneWithAPIContextModification:(MOZUAPIContextModificationBlock)apiContextModification;

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of all option attributes configured for the product specified in the request.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

- (void)optionsWithProductCode:(NSString *)productCode completionHandler:(void(^)(NSArray<MOZUAdminProductOption> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the details of an option attribute configuration for the specified product.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)optionWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminProductOption *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Configures an option attribute for the product specified in the request.
@param body Properties of the option attribute to define for the product.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)addOptionWithBody:(MOZUAdminProductOption *)body productCode:(NSString *)productCode responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminProductOption *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates one or more properties of an option attribute configured for a product.
@param body Properties of the product option attribute configuration to update.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)updateOptionWithBody:(MOZUAdminProductOption *)body productCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUAdminProductOption *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the configuration of an option attribute for the product specified in the request.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productCode Merchant-created code that uniquely identifies the product such as a SKU or item number. Once created, the product code is read-only.
*/

- (void)deleteOptionWithProductCode:(NSString *)productCode attributeFQN:(NSString *)attributeFQN completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end