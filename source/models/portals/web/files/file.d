module models.portals.web.files.file;

@safe:
import uim.entities;

// Storage of files used in the web Portals.
class DPTLWebFile : DOOPEntity {
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
      "webFileId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Web File"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Web File"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "adxCreatedByIPAddress": OOPAttributeString.descriptions(["en":""]),
      "adxCreatedByUsername": OOPAttributeString.descriptions(["en":""]),
      "displayDate": OOPAttributeDate.descriptions(["en":""]),
      "displayOrder": OOPAttributeString.descriptions(["en":""]),
      "hiddenFromSitemap": OOPAttributeString.descriptions(["en":""]),
      "adxModifiedByIPAddress": OOPAttributeString.descriptions(["en":""]),
      "adxModifiedByUsername": OOPAttributeString.descriptions(["en":""]),
      "parentPageId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Web Page associated with Web File."]),
      "partialUrl": OOPAttributeUrl.descriptions(["en":""]),
      "subjectId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Subject associated with Web File."]),
      "summary": OOPAttributeString.descriptions(["en":""]),
      "webSiteId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Website associated with Web File."]),
      "allowOrigin": OOPAttributeString.descriptions(["en":"Defines CORS header Access-Control-Allow-Origin for cross origin requests."]),
      "cloudBlobAddress": OOPAttributeString.descriptions(["en":""]),
      "contentDisposition": OOPAttributeString.descriptions(["en":"Shows the value to be applied to the HTTP Response Headers Content-Disposition."]),
      "contentDisposition_display": OOPAttributeString.descriptions(["en":""]),
      "enableTracking": OOPAttributeString.descriptions(["en":"Select whether to enable logging of users' downloads of this web file."]),
      "excludeFromSearch": OOPAttributeString.descriptions(["en":"Shows whether the web file is excluded from the portal search."]),
      "expirationDate": OOPAttributeDate.descriptions(["en":""]),
      "masterWebFileId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Web File associated with Web File."]),
      "publishingStateId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Publishing State associated with Web File."]),
      "releaseDate": OOPAttributeDate.descriptions(["en":""]),
      "title": OOPAttributeString.descriptions(["en":""]),
      "blogPostId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Blog Post associated with Web File."]),
      "ideaId": OOPAttributeUUID.descriptions(["en":"Shows the Idea associated with the Web File."]),
    ]);
  }

  override string entityClass() { return "aplWebFile"; }
  override string entityClasses() { return "aplWebFiles"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  auto webFile() {  
    if ("webFileId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[this.entityClasses].findOne(["id": this.attributes["webFileId"].toString]);
    return null;
  }  
   
  auto webSite() {  
    if ("webSiteId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PTLWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null;
  }
}
auto PTLWebFile() { return new DPTLWebFile; } 
auto PTLWebFile(Json json) { return new DPTLWebFile(json); } 

version(test_model_portals) {
  unittest {
    assert(PTLWebFile);
  
  auto entity = PTLWebFile;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}