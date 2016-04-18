/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUOrderURLComponents.h"

@implementation MOZUOrderURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetOrdersOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter q:(NSString *)q qLimit:(NSNumber *)qLimit responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}&q={q}&qLimit={qLimit}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"startIndex" : startIndex ? startIndex : @"",
		@"pageSize" : pageSize ? pageSize : @"",
		@"sortBy" : sortBy ? sortBy : @"",
		@"filter" : filter ? filter : @"",
		@"q" : q ? q : @"",
		@"qLimit" : qLimit ? qLimit : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetAvailableActionsOperationWithOrderId:(NSString *)orderId {
	NSString *template = @"/api/commerce/orders/{orderId}/actions";
	NSDictionary *params = @{
		@"orderId" : orderId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetTaxableOrdersOperationWithOrderId:(NSString *)orderId {
	NSString *template = @"/api/commerce/orders/{orderId}/taxableorders";
	NSDictionary *params = @{
		@"orderId" : orderId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetOrderOperationWithOrderId:(NSString *)orderId draft:(NSNumber *)draft responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/{orderId}?draft={draft}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"draft" : draft ? draft : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForCreateOrderFromCartOperationWithCartId:(NSString *)cartId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/?cartId={cartId}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"cartId" : cartId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForCreateOrderOperationWithResponseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/?responseFields={responseFields}";
	NSDictionary *params = @{
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForPerformOrderActionOperationWithOrderId:(NSString *)orderId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/{orderId}/actions?responseFields={responseFields}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForProcessDigitalWalletOperationWithOrderId:(NSString *)orderId digitalWalletType:(NSString *)digitalWalletType responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/{orderId}/digitalWallet/{digitalWalletType}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"digitalWalletType" : digitalWalletType,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForUpdateOrderDiscountOperationWithOrderId:(NSString *)orderId discountId:(NSInteger)discountId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/{orderId}/discounts/{discountId}?updatemode={updateMode}&version={version}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"discountId" : @(discountId),
		@"updateMode" : updateMode ? updateMode : @"",
		@"version" : version ? version : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForDeleteOrderDraftOperationWithOrderId:(NSString *)orderId version:(NSString *)version {
	NSString *template = @"/api/commerce/orders/{orderId}/draft?version={version}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"version" : version ? version : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForResendOrderConfirmationEmailOperationWithOrderId:(NSString *)orderId {
	NSString *template = @"/api/commerce/orders/{orderId}/email/resend";
	NSDictionary *params = @{
		@"orderId" : orderId,
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForChangeOrderPriceListOperationWithOrderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/{orderId}/priceList?updatemode={updateMode}&version={version}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"updateMode" : updateMode ? updateMode : @"",
		@"version" : version ? version : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForChangeOrderUserIdOperationWithOrderId:(NSString *)orderId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/{orderId}/users?responseFields={responseFields}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForUpdateOrderOperationWithOrderId:(NSString *)orderId updateMode:(NSString *)updateMode version:(NSString *)version responseFields:(NSString *)responseFields {
	NSString *template = @"/api/commerce/orders/{orderId}?updatemode={updateMode}&version={version}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"orderId" : orderId,
		@"updateMode" : updateMode ? updateMode : @"",
		@"version" : version ? version : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end