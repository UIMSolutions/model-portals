module models.portals.entities.web.pages.page;

@safe:
import models.portals;

// WebPage 
class DPortalWebPageEntity : DOOPEntity {
  mixin(EntityThis!("PortalWebPageEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttributeClass, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "webPageId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "stateCode": StringAttributeClass, // Status of the Web Page"]),
        "stateCode_display": StringAttributeClass, // 
        "authorId": UUIDAttributeClass, // Unique identifier for Contact associated with Web Page."]),
        "category": StringAttributeClass, // 
        "category_display": StringAttributeClass, // 
        "copy": StringAttributeClass, // 
        "adxCreatedByIPAddress": StringAttributeClass, // 
        "adxCreatedByUsername": StringAttributeClass, // 
        "displayDate": DateAttributeClass, // 
        "displayOrder": StringAttributeClass, // 
        "hiddenFromSitemap": StringAttributeClass, // 
        "adxModifiedByIPAddress": StringAttributeClass, // 
        "adxModifiedByUsername": StringAttributeClass, // 
        "pageTemplateId": UUIDAttributeClass, // Unique identifier for Page Template associated with Web Page."]),
        "parentPageId": UUIDAttributeClass, // Unique identifier for Web Page associated with Web Page."]),
        "partialUrl": UrlAttributeClass, // "]),
        "subjectId": UUIDAttributeClass, // Unique identifier for Subject associated with Web Page."]),
        "summary": StringAttributeClass, // 
        "title": StringAttributeClass, // 
        "webSiteId": UUIDAttributeClass, // Unique identifier for Website associated with Web Page."]),
        "allowOrigin": StringAttributeClass, // Defines CORS header Access-Control-Allow-Origin for cross origin requests."]),
        "customCSS": StringAttributeClass, // 
        "customJavaScript": StringAttributeClass, // 
        "editorialComments": StringAttributeClass, // 
        "enabletracking": StringAttributeClass, // Select whether to enable logging of users' downloads of this webpage."]),
        "excludeFromSearch": StringAttributeClass, // Shows whether the webpage is excluded from the portal search."]),
        "expirationDate": DateAttributeClass, // 
        "image": StringAttributeClass, // Unique identifier for Web File associated with Web Page."]),
        "imageUrl": UrlAttributeClass, // "]),
        "isRoot": BooleanAttributeClass, // Defines whether this is the 'root' record of this translated group of Web Pages."]),
        "masterWebPageId": UUIDAttributeClass, // Unique identifier for Web Page associated with Web Page."]),
        "metaDescription": StringAttributeClass, // 
        "navigation": StringAttributeClass, // Unique identifier for Web Link Set associated with Web Page."]),
        "publishingStateId": UUIDAttributeClass, // Unique identifier for Publishing State associated with Web Page."]),
        "releaseDate": DateAttributeClass, // 
        "rootWebpageId": UUIDAttributeClass, // Lookup to root WebPage."]),
        "sharedPageConfiguration": StringAttributeClass, // Determines if the content page uses the root page configuration"]),
        "webpageLanguageId": UUIDAttributeClass, // Language of this web page."]),
        "entityForm": StringAttributeClass, // Unique identifier for Entity Form associated with Web Page."]),
        "entityList": StringAttributeClass, // Unique identifier for Entity List associated with Web Page."]),
        "webForm": StringAttributeClass, // Unique identifier for Web Form associated with Web Page."]),
        "commentPolicy": StringAttributeClass, // 
        "commentPolicy_display": StringAttributeClass, // 
        "enableRatings": StringAttributeClass, // Setting this value to 'Yes' will allow users to rate the web page."]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Reason for the status of the Web Page
      ])
      .registerPath("portal_webpages");   
  }
/*   auto webPage() {  
    if (collection && collection.tenant) 
      return collection.tenant[PortalWebPageEntity.entityClasses].findOne(["id": this.attributes["webPageId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO 
    }}
  
  auto webSite() {  
    if (collection && collection.tenant) 
      return collection.tenant[PortalWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO 
    }} */
}
mixin(EntityCalls!("PortalWebPageEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalWebPageEntity);
  
  auto entity = PortalWebPageEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}