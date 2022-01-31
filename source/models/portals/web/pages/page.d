module models.portals.web.pages.page;

@safe:
import uim.entities;

// WebPage 
class DPTLWebPage : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "webPageId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Web Page"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Web Page"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "authorId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Contact associated with Web Page."]),
      "category": OOPAttributeString.descriptions(["en":""]),
      "category_display": OOPAttributeString.descriptions(["en":""]),
      "copy": OOPAttributeString.descriptions(["en":""]),
      "adxCreatedByIPAddress": OOPAttributeString.descriptions(["en":""]),
      "adxCreatedByUsername": OOPAttributeString.descriptions(["en":""]),
      "displayDate": OOPAttributeDate.descriptions(["en":""]),
      "displayOrder": OOPAttributeString.descriptions(["en":""]),
      "hiddenFromSitemap": OOPAttributeString.descriptions(["en":""]),
      "adxModifiedByIPAddress": OOPAttributeString.descriptions(["en":""]),
      "adxModifiedByUsername": OOPAttributeString.descriptions(["en":""]),
      "pageTemplateId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Page Template associated with Web Page."]),
      "parentPageId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Web Page associated with Web Page."]),
      "partialUrl": OOPAttributeUrl.descriptions(["en":""]),
      "subjectId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Subject associated with Web Page."]),
      "summary": OOPAttributeString.descriptions(["en":""]),
      "title": OOPAttributeString.descriptions(["en":""]),
      "webSiteId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Website associated with Web Page."]),
      "allowOrigin": OOPAttributeString.descriptions(["en":"Defines CORS header Access-Control-Allow-Origin for cross origin requests."]),
      "customCSS": OOPAttributeString.descriptions(["en":""]),
      "customJavaScript": OOPAttributeString.descriptions(["en":""]),
      "editorialComments": OOPAttributeString.descriptions(["en":""]),
      "enabletracking": OOPAttributeString.descriptions(["en":"Select whether to enable logging of users' downloads of this webpage."]),
      "excludeFromSearch": OOPAttributeString.descriptions(["en":"Shows whether the webpage is excluded from the portal search."]),
      "expirationDate": OOPAttributeDate.descriptions(["en":""]),
      "image": OOPAttributeString.descriptions(["en":"Unique identifier for Web File associated with Web Page."]),
      "imageUrl": OOPAttributeUrl.descriptions(["en":""]),
      "isRoot": OOPAttributeBoolean.descriptions(["en":"Defines whether this is the 'root' record of this translated group of Web Pages."]),
      "masterWebPageId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Web Page associated with Web Page."]),
      "metaDescription": OOPAttributeString.descriptions(["en":""]),
      "navigation": OOPAttributeString.descriptions(["en":"Unique identifier for Web Link Set associated with Web Page."]),
      "publishingStateId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Publishing State associated with Web Page."]),
      "releaseDate": OOPAttributeDate.descriptions(["en":""]),
      "rootWebpageId": OOPAttributeUUID.descriptions(["en":"Lookup to root WebPage."]),
      "sharedPageConfiguration": OOPAttributeString.descriptions(["en":"Determines if the content page uses the root page configuration"]),
      "webpageLanguageId": OOPAttributeUUID.descriptions(["en":"Language of this web page."]),
      "entityForm": OOPAttributeString.descriptions(["en":"Unique identifier for Entity Form associated with Web Page."]),
      "entityList": OOPAttributeString.descriptions(["en":"Unique identifier for Entity List associated with Web Page."]),
      "webForm": OOPAttributeString.descriptions(["en":"Unique identifier for Web Form associated with Web Page."]),
      "commentPolicy": OOPAttributeString.descriptions(["en":""]),
      "commentPolicy_display": OOPAttributeString.descriptions(["en":""]),
      "enableRatings": OOPAttributeString.descriptions(["en":"Setting this value to 'Yes' will allow users to rate the web page."]),
    ]);
  }

  override string entityClass() { return "aplWebPage"; }
  override string entityClasses() { return "aplWebPages"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
 
  auto webPage() {  
    if (collection && collection.tenant) 
      return collection.tenant[PTLWebPage.entityClasses].findOne(["id": this.attributes["webPageId"].toString]);
    return null; }
  unittest {
    version(uim_entities) {
      // TODO 
    }}
  
  auto webSite() {  
    if (collection && collection.tenant) 
      return collection.tenant[PTLWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; }
  unittest {
    version(uim_entities) {
      // TODO 
    }}
}
auto PTLWebPage() { return new DPTLWebPage; } 
auto PTLWebPage(Json json) { return new DPTLWebPage(json); } 

unittest {
  version(uim_entities) {
    assert(PTLWebPage);
  
  auto entity = PTLWebPage;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}