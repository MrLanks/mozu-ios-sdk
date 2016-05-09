
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

#import "MOZUDocument.h"


@interface MOZUDocumentTreeResource : NSObject


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
Retrieve the content associated with the document, such as a product image or PDF specifications file.
@param documentListName Name of content documentListName to delete
@param documentName The name of the document in the site.
*/

- (void)treeDocumentContentWithDocumentListName:(NSString *)documentListName documentName:(NSString *)documentName completionHandler:(void(^)(NSInputStream *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Performs transformations on a document. For example, resizing an image.
@param crop Crops the image based on the specified coordinates. The reference point for positive coordinates is the top-left corner of the image, and the reference point for negative coordinates is the bottom-right corner of the image.Usage: Example:  removes 10 pixels from all edges of the image.  leaves the image uncropped.
@param documentListName Name of content documentListName to delete
@param documentName The name of the document in the site.
@param height Specifies an exact height dimension for the image, in pixels.
@param max Specifies a pixel limitation for the largest side of an image.
@param maxHeight Specifies a pixel limitation for the height of the image, preserving the aspect ratio if the image needs resizing.
@param maxWidth Specifies a pixel limitation for the width of the image, preserving the aspect ratio if the image needs resizing.
@param quality Adjusts the image compression. Accepts values from 0-100, where 100 = highest quality, least compression.
@param width Specifies an exact width dimension for the image, in pixels.
*/

- (void)transformTreeDocumentContentWithDocumentListName:(NSString *)documentListName documentName:(NSString *)documentName width:(NSNumber *)width height:(NSNumber *)height max:(NSNumber *)max maxWidth:(NSNumber *)maxWidth maxHeight:(NSNumber *)maxHeight crop:(NSString *)crop quality:(NSNumber *)quality completionHandler:(void(^)(NSInputStream *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;
/**
Retrieves a document based on its document list and folder path in the document hierarchy.
@param documentListName Name of content documentListName to delete
@param documentName The name of the document in the site.
@param includeInactive Include inactive content.
@param responseFields Use this field to include those fields which are not included by default.
*/

- (void)treeDocumentWithDocumentListName:(NSString *)documentListName documentName:(NSString *)documentName includeInactive:(NSNumber *)includeInactive responseFields:(NSString *)responseFields completionHandler:(void(^)(MOZUDocument *result, MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

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

/**
Updates the binary data or content associated with a document, such as a product image or PDF specifications file, by supplying the document name.
@param body Data stream that delivers information. Used to input and output data.
@param documentListName Name of content documentListName to delete
@param documentName The name of the document in the site.
*/

- (void)updateTreeDocumentContentWithBody:(NSInputStream *)body documentListName:(NSString *)documentListName documentName:(NSString *)documentName completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;

//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Deletes the content associated with a document, such as a product image or PDF specifications file.
@param body Data stream that delivers information. Used to input and output data.
@param documentListName Name of content documentListName to delete
@param documentName The name of the document in the site.
*/

- (void)deleteTreeDocumentContentWithBody:(NSInputStream *)body documentListName:(NSString *)documentListName documentName:(NSString *)documentName completionHandler:(void(^)(MOZUAPIError *error, NSHTTPURLResponse *response))handler
;


@end