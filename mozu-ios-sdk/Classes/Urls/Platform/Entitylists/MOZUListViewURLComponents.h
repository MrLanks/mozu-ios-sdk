/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import "MOZUURLComponents.h"

@interface MOZUListViewURLComponents : NSObject

//
#pragma mark -
#pragma mark Get Operations
#pragma mark -
//

/**
Resource Url Components for getViewEntity
@param entityListFullName The full name of the EntityList including namespace in name@nameSpace format
@param viewName The name for a view. Views are used to render data in Mozu, such as document and entity lists. Each view includes a schema, format, name, ID, and associated data types to render.
@param entityId Unique identifier for an entity, which defines the schema, rules, and formats for JSON entities within the MZDB (Mozu Mongo DB).
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetViewEntityOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName entityId:(NSString *)entityId responseFields:(NSString *)responseFields;

/**
Resource Url Components for getViewEntities
@param entityListFullName The full name of the EntityList including namespace in name@nameSpace format
@param viewName The name for a view. Views are used to render data in Mozu, such as document and entity lists. Each view includes a schema, format, name, ID, and associated data types to render.
@param pageSize The number of results to display on each page when creating paged results from a query. The amount is divided and displayed on the `pageCount `amount of pages. The default is 20 and maximum value is 200 per page.
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a `pageSize `of 25, to get the 51st through the 75th items, use `startIndex=50`.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetViewEntitiesOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex filter:(NSString *)filter responseFields:(NSString *)responseFields;

/**
Resource Url Components for getViewEntityContainer
@param entityListFullName The full name of the EntityList including namespace in name@nameSpace format
@param viewName The name for a view. Views are used to render data in Mozu, such as document and entity lists. Each view includes a schema, format, name, ID, and associated data types to render.
@param entityId Unique identifier for an entity, which defines the schema, rules, and formats for JSON entities within the MZDB (Mozu Mongo DB).
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetViewEntityContainerOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName entityId:(NSString *)entityId responseFields:(NSString *)responseFields;

/**
Resource Url Components for getViewEntityContainers
@param entityListFullName The full name of the EntityList including namespace in name@nameSpace format
@param viewName The name for a view. Views are used to render data in Mozu, such as document and entity lists. Each view includes a schema, format, name, ID, and associated data types to render.
@param pageSize The number of results to display on each page when creating paged results from a query. The amount is divided and displayed on the `pageCount `amount of pages. The default is 20 and maximum value is 200 per page.
@param startIndex When creating paged results from a query, this value indicates the zero-based offset in the complete result set where the returned entities begin. For example, with a `pageSize `of 25, to get the 51st through the 75th items, use `startIndex=50`.
@param filter A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetViewEntityContainersOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName pageSize:(NSNumber *)pageSize startIndex:(NSNumber *)startIndex filter:(NSString *)filter responseFields:(NSString *)responseFields;

/**
Resource Url Components for getEntityListView
@param entityListFullName The full name of the EntityList including namespace in name@nameSpace format
@param viewName The name for a view. Views are used to render data in Mozu, such as document and entity lists. Each view includes a schema, format, name, ID, and associated data types to render.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetEntityListViewOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName responseFields:(NSString *)responseFields;

/**
Resource Url Components for getEntityListViews
@param entityListFullName The full name of the EntityList including namespace in name@nameSpace format
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForGetEntityListViewsOperationWithEntityListFullName:(NSString *)entityListFullName responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark POST Operations
#pragma mark -
//

/**
Resource Url Components for createEntityListView
@param entityListFullName The full name of the EntityList including namespace in name@nameSpace format
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForCreateEntityListViewOperationWithEntityListFullName:(NSString *)entityListFullName responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark PUT Operations
#pragma mark -
//

/**
Resource Url Components for updateEntityListView
@param entityListFullName The full name of the EntityList including namespace in name@nameSpace format
@param viewName The name for a view. Views are used to render data in Mozu, such as document and entity lists. Each view includes a schema, format, name, ID, and associated data types to render.
@param responseFields Use this field to include those fields which are not included by default.
*/
+ (MOZUURLComponents *)URLComponentsForUpdateEntityListViewOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName responseFields:(NSString *)responseFields;


//
#pragma mark -
#pragma mark Delete Operations
#pragma mark -
//

/**
Resource Url Components for deleteEntityListView
@param entityListFullName The full name of the EntityList including namespace in name@nameSpace format
@param viewName The name for a view. Views are used to render data in Mozu, such as document and entity lists. Each view includes a schema, format, name, ID, and associated data types to render.
*/
+ (MOZUURLComponents *)URLComponentsForDeleteEntityListViewOperationWithEntityListFullName:(NSString *)entityListFullName viewName:(NSString *)viewName;



@end