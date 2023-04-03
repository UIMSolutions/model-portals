module models.portals.entities.web.pages.page;

@safe:
import models.portals;

// WebPage 
class DPortalWebPageEntity : DEntity {
  mixin(EntityThis!("PortalWebPageEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Status of the Web Page
        StatusCodeAttribute, // Reason for the status of the Web Page
        WebPageIdAttribute, // Unique identifier for entity instances
        WebSiteIdAttribute, // Unique identifier for Website associated with Web Page.
      ])
      .addValues([
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "authorId": UUIDAttribute, // Unique identifier for Contact associated with Web Page.
        "category": StringAttribute, // 
        "category_display": StringAttribute, // 
        "copy": StringAttribute, // 
        "adxCreatedByIPAddress": StringAttribute, // 
        "adxCreatedByUsername": StringAttribute, // 
        "displayDate": DateAttribute, // 
        "displayOrder": StringAttribute, // 
        "hiddenFromSitemap": StringAttribute, // 
        "adxModifiedByIPAddress": StringAttribute, // 
        "adxModifiedByUsername": StringAttribute, // 
        "pageTemplateId": UUIDAttribute, // Unique identifier for Page Template associated with Web Page.
        "parentPageId": UUIDAttribute, // Unique identifier for Web Page associated with Web Page.
        "partialUrl": UrlAttribute, // 
        "subjectId": UUIDAttribute, // Unique identifier for Subject associated with Web Page.
        "summary": StringAttribute, // 
        "title": StringAttribute, // 
        "allowOrigin": StringAttribute, // Defines CORS header Access-Control-Allow-Origin for cross origin requests.
        "customCSS": StringAttribute, // 
        "customJavaScript": StringAttribute, // 
        "editorialComments": StringAttribute, // 
        "enabletracking": StringAttribute, // Select whether to enable logging of users' downloads of this webpage.
        "excludeFromSearch": StringAttribute, // Shows whether the webpage is excluded from the portal search.
        "expirationDate": DateAttribute, // 
        "image": StringAttribute, // Unique identifier for Web File associated with Web Page.
        "imageUrl": UrlAttribute, // 
        "isRoot": BooleanAttribute, // Defines whether this is the 'root' record of this translated group of Web Pages.
        "masterWebPageId": WebPageIdAttribute, // Unique identifier for Web Page associated with Web Page.
        "metaDescription": StringAttribute, // 
        "navigation": StringAttribute, // Unique identifier for Web Link Set associated with Web Page.
        "publishingStateId": UUIDAttribute, // Unique identifier for Publishing State associated with Web Page.
        "releaseDate": DateAttribute, // 
        "rootWebPageId": WebPageIdAttribute, // Lookup to root WebPage.
        "sharedPageConfiguration": StringAttribute, // Determines if the content page uses the root page configuration
        "webpageLanguageId": UUIDAttribute, // Language of this web page.
        "entityForm": StringAttribute, // Unique identifier for Entity Form associated with Web Page.
        "entityList": StringAttribute, // Unique identifier for Entity List associated with Web Page.
        "webForm": StringAttribute, // Unique identifier for Web Form associated with Web Page.
        "commentPolicy": StringAttribute, // 
        "commentPolicy_display": StringAttribute, // 
        "enableRatings": StringAttribute, // Setting this value to 'Yes' will allow users to rate the web page.
      ])
      .registerPath("portal_web.pages")      
      .routingPath("/portals/webpages");      
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