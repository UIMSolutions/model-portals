module models.portals.entities.web.pages.page;

@safe:
import models.portals;

// WebPage 
class DPTLWebPage : DOOPEntity {
  mixin(OOPEntityThis!("PTLWebPage"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "webPageId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Web Page"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Web Page"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "authorId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Contact associated with Web Page."]),
        "category": OOPStringAttribute.descriptions(["en":""]),
        "category_display": OOPStringAttribute.descriptions(["en":""]),
        "copy": OOPStringAttribute.descriptions(["en":""]),
        "adxCreatedByIPAddress": OOPStringAttribute.descriptions(["en":""]),
        "adxCreatedByUsername": OOPStringAttribute.descriptions(["en":""]),
        "displayDate": OOPAttributeDate.descriptions(["en":""]),
        "displayOrder": OOPStringAttribute.descriptions(["en":""]),
        "hiddenFromSitemap": OOPStringAttribute.descriptions(["en":""]),
        "adxModifiedByIPAddress": OOPStringAttribute.descriptions(["en":""]),
        "adxModifiedByUsername": OOPStringAttribute.descriptions(["en":""]),
        "pageTemplateId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Page Template associated with Web Page."]),
        "parentPageId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Web Page associated with Web Page."]),
        "partialUrl": OOPUrlAttribute.descriptions(["en":""]),
        "subjectId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Subject associated with Web Page."]),
        "summary": OOPStringAttribute.descriptions(["en":""]),
        "title": OOPStringAttribute.descriptions(["en":""]),
        "webSiteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Website associated with Web Page."]),
        "allowOrigin": OOPStringAttribute.descriptions(["en":"Defines CORS header Access-Control-Allow-Origin for cross origin requests."]),
        "customCSS": OOPStringAttribute.descriptions(["en":""]),
        "customJavaScript": OOPStringAttribute.descriptions(["en":""]),
        "editorialComments": OOPStringAttribute.descriptions(["en":""]),
        "enabletracking": OOPStringAttribute.descriptions(["en":"Select whether to enable logging of users' downloads of this webpage."]),
        "excludeFromSearch": OOPStringAttribute.descriptions(["en":"Shows whether the webpage is excluded from the portal search."]),
        "expirationDate": OOPAttributeDate.descriptions(["en":""]),
        "image": OOPStringAttribute.descriptions(["en":"Unique identifier for Web File associated with Web Page."]),
        "imageUrl": OOPUrlAttribute.descriptions(["en":""]),
        "isRoot": OOPBooleanAttribute.descriptions(["en":"Defines whether this is the 'root' record of this translated group of Web Pages."]),
        "masterWebPageId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Web Page associated with Web Page."]),
        "metaDescription": OOPStringAttribute.descriptions(["en":""]),
        "navigation": OOPStringAttribute.descriptions(["en":"Unique identifier for Web Link Set associated with Web Page."]),
        "publishingStateId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Publishing State associated with Web Page."]),
        "releaseDate": OOPAttributeDate.descriptions(["en":""]),
        "rootWebpageId": OOPUUIDAttribute.descriptions(["en":"Lookup to root WebPage."]),
        "sharedPageConfiguration": OOPStringAttribute.descriptions(["en":"Determines if the content page uses the root page configuration"]),
        "webpageLanguageId": OOPUUIDAttribute.descriptions(["en":"Language of this web page."]),
        "entityForm": OOPStringAttribute.descriptions(["en":"Unique identifier for Entity Form associated with Web Page."]),
        "entityList": OOPStringAttribute.descriptions(["en":"Unique identifier for Entity List associated with Web Page."]),
        "webForm": OOPStringAttribute.descriptions(["en":"Unique identifier for Web Form associated with Web Page."]),
        "commentPolicy": OOPStringAttribute.descriptions(["en":""]),
        "commentPolicy_display": OOPStringAttribute.descriptions(["en":""]),
        "enableRatings": OOPStringAttribute.descriptions(["en":"Setting this value to 'Yes' will allow users to rate the web page."]),
      ])
      .registerPath("portal_webpages");   
  }
/*   auto webPage() {  
    if (collection && collection.tenant) 
      return collection.tenant[PTLWebPage.entityClasses].findOne(["id": this.attributes["webPageId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO 
    }}
  
  auto webSite() {  
    if (collection && collection.tenant) 
      return collection.tenant[PTLWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO 
    }} */
}
mixin(OOPEntityCalls!("PTLWebPage"));

version(test_model_portals) {
  unittest {
    assert(PTLWebPage);
  
  auto entity = PTLWebPage;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}