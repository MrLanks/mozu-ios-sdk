/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUEventNotificationURLComponents.h"

@implementation MOZUEventNotificationURLComponents

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

+ (MOZUURLComponents *)URLComponentsForGetEventsOperationWithStartIndex:(NSNumber *)startIndex pageSize:(NSNumber *)pageSize sortBy:(NSString *)sortBy filter:(NSString *)filter responseFields:(NSString *)responseFields {
	NSString *template = @"/api/event/pull/?startIndex={startIndex}&pageSize={pageSize}&sortBy={sortBy}&filter={filter}&responseFields={responseFields}";
	NSDictionary *params = @{
		@"startIndex" : startIndex ? startIndex : @"",
		@"pageSize" : pageSize ? pageSize : @"",
		@"sortBy" : sortBy ? sortBy : @"",
		@"filter" : filter ? filter : @"",
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}

+ (MOZUURLComponents *)URLComponentsForGetEventOperationWithEventId:(NSString *)eventId responseFields:(NSString *)responseFields {
	NSString *template = @"/api/event/pull/{eventId}?responseFields={responseFields}";
	NSDictionary *params = @{
		@"eventId" : eventId,
		@"responseFields" : responseFields ? responseFields : @"",
	};

	return [[MOZUURLComponents alloc] initWithTemplate:template parameters:params location:MOZUHomePod useSSL:NO];
}


//
#pragma mark -
#pragma mark Post Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Put Operations
#pragma mark -
//


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//



@end