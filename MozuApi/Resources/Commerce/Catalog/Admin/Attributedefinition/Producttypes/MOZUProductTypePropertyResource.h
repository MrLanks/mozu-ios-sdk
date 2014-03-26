
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

#import "MOZUAuthTicket.h"
#import "MOZUAttributeInProductType.h"


@interface MOZUProductTypePropertyResource : NSObject


@property(readonly, nonatomic) MOZUAPIContext *apiContext;

- (instancetype)initWithAPIContext:(MOZUAPIContext *)apiContext;


//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Retrieves a list of product properties that belong to a product type.
@param productTypeId Identifier of the product type whose properties are being retrieved as a paged list.
*/

- (void)propertiesWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(NSArray<MOZUAttributeInProductType> *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves the single property by providing the property ID and the attribute's user-defined fully qualified name.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type whose single instance of a property is being retrieved.
*/

- (void)propertyWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAttributeInProductType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

/**
Adds or creates the attribute which exists as properties in the product type.
@param body The attribute in product type refers to the specific product attribute that is being created to exist as a property only available in the product type template.
@param productTypeId Identifier of the product type whose properties are being added or created to the product type.
*/

- (void)addPropertyWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAttributeInProductType *)body productTypeId:(NSInteger)productTypeId userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAttributeInProductType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

/**
Updates the single property by providing the property ID and the attribute's user-defined fully qualified name.
@param body The properties of the attribute (that exist as properties) are being updated.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type whose single instance of a property is being updated.
*/

- (void)updatePropertyWithDataViewMode:(MOZUDataViewMode)dataViewMode body:(MOZUAttributeInProductType *)body productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAttributeInProductType *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the property by providing the attribute's user-defined fully qualified name.
@param attributeFQN The fully qualified name of the attribute, which is a user defined attribute identifier.
@param productTypeId Identifier of the product type whose properties are being deleted.
*/

- (void)deletePropertyWithDataViewMode:(MOZUDataViewMode)dataViewMode productTypeId:(NSInteger)productTypeId attributeFQN:(NSString *)attributeFQN userClaims:(MOZUUserAuthTicket *)userClaims completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end