module models.portals.entities.web.files.file;

@safe:
import models.portals;

// Storage of files used in the web Portals.
class DPortalWebFileEntity : DOOPEntity {
  mixin(EntityThis!("PortalWebFileEntity"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
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
        "webFileId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Web File"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "adxCreatedByIPAddress": OOPStringAttribute.descriptions(["en":""]),
        "adxCreatedByUsername": OOPStringAttribute.descriptions(["en":""]),
        "displayDate": OOPAttributeDate.descriptions(["en":""]),
        "displayOrder": OOPStringAttribute.descriptions(["en":""]),
        "hiddenFromSitemap": OOPStringAttribute.descriptions(["en":""]),
        "adxModifiedByIPAddress": OOPStringAttribute.descriptions(["en":""]),
        "adxModifiedByUsername": OOPStringAttribute.descriptions(["en":""]),
        "parentPageId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Web Page associated with Web File."]),
        "partialUrl": OOPUrlAttribute.descriptions(["en":""]),
        "subjectId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Subject associated with Web File."]),
        "summary": OOPStringAttribute.descriptions(["en":""]),
        "webSiteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Website associated with Web File."]),
        "allowOrigin": OOPStringAttribute.descriptions(["en":"Defines CORS header Access-Control-Allow-Origin for cross origin requests."]),
        "cloudBlobAddress": OOPStringAttribute.descriptions(["en":""]),
        "contentDisposition": OOPStringAttribute.descriptions(["en":"Shows the value to be applied to the HTTP Response Headers Content-Disposition."]),
        "contentDisposition_display": OOPStringAttribute.descriptions(["en":""]),
        "enableTracking": OOPStringAttribute.descriptions(["en":"Select whether to enable logging of users' downloads of this web file."]),
        "excludeFromSearch": OOPStringAttribute.descriptions(["en":"Shows whether the web file is excluded from the portal search."]),
        "expirationDate": OOPAttributeDate.descriptions(["en":""]),
        "masterWebFileId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Web File associated with Web File."]),
        "publishingStateId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Publishing State associated with Web File."]),
        "releaseDate": OOPAttributeDate.descriptions(["en":""]),
        "title": OOPStringAttribute.descriptions(["en":""]),
        "blogPostId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Blog Post associated with Web File."]),
        "ideaId": OOPUUIDAttribute.descriptions(["en":"Shows the Idea associated with the Web File."]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Reason for the status of the Web File
      ])
      .registerPath("portal_webfiles");
  }

  /* auto webFile() {  
    if ("webFileId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[this.entityClasses].findOne(["id": this.attributes["webFileId"].toString]);
    return null;
  }  
   
  auto webSite() {  
    if ("webSiteId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PortalWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null;
  } */
}
mixin(EntityCalls!("PortalWebFileEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalWebFileEntity);
  
  auto entity = PortalWebFileEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}