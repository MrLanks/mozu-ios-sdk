/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUReturnURL.h"

@implementation MOZUReturnURL

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+(MOZUURL*)URLForGetReturnsOperationWithStartIndex:(NSNumber*)startIndex pageSize:(NSNumber*)pageSize sortBy:(NSString*)sortBy filter:(NSString*)filter {
	NSString* template = @"/api/commerce/returns/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}";
	NSDictionary* params = @{
		@"startIndex" : @(startIndex),
		@"pageSize" : @(pageSize),
		@"sortBy" : sortBy,
		@"filter" : filter,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetReturnOperationWithReturnId:(NSString*)returnId {
	NSString* template = @"/api/commerce/returns/{returnId}";
	NSDictionary* params = @{
		@"returnId" : returnId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetAvailableReturnActionsOperationWithReturnId:(NSString*)returnId {
	NSString* template = @"/api/commerce/returns/{returnId}/actions";
	NSDictionary* params = @{
		@"returnId" : returnId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetPaymentsOperationWithReturnId:(NSString*)returnId {
	NSString* template = @"/api/commerce/returns/{returnId}/payments";
	NSDictionary* params = @{
		@"returnId" : returnId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetPaymentOperationWithReturnId:(NSString*)returnId paymentId:(NSString*)paymentId {
	NSString* template = @"/api/commerce/returns/{returnId}/payments/{paymentId}";
	NSDictionary* params = @{
		@"returnId" : returnId,
		@"paymentId" : paymentId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForGetAvailablePaymentActionsForReturnOperationWithReturnId:(NSString*)returnId paymentId:(NSString*)paymentId {
	NSString* template = @"/api/commerce/returns/{returnId}/payments/{paymentId}/actions";
	NSDictionary* params = @{
		@"returnId" : returnId,
		@"paymentId" : paymentId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//

+(MOZUURL*)URLForCreateReturnOperation {
	NSString* template = @"/api/commerce/returns/";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForPerformPaymentActionForReturnOperationWithReturnId:(NSString*)returnId paymentId:(NSString*)paymentId {
	NSString* template = @"/api/commerce/returns/{returnId}/payments/{paymentId}/actions";
	NSDictionary* params = @{
		@"returnId" : returnId,
		@"paymentId" : paymentId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForCreatePaymentActionForReturnOperationWithReturnId:(NSString*)returnId {
	NSString* template = @"/api/commerce/returns/{returnId}/payments/actions";
	NSDictionary* params = @{
		@"returnId" : returnId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}

+(MOZUURL*)URLForPerformReturnActionsOperation {
	NSString* template = @"/api/commerce/returns/actions";
	NSDictionary* params = nil;

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//

+(MOZUURL*)URLForUpdateReturnOperationWithReturnId:(NSString*)returnId {
	NSString* template = @"/api/commerce/returns/{returnId}";
	NSDictionary* params = @{
		@"returnId" : returnId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

+(MOZUURL*)URLForDeleteReturnOperationWithReturnId:(NSString*)returnId {
	NSString* template = @"/api/commerce/returns/{returnId}";
	NSDictionary* params = @{
		@"returnId" : returnId,
	};

	return [[MOZUURL alloc] initWithTemplate:template parameters:params location:kTenantPod useSSL:NO];
}



@end