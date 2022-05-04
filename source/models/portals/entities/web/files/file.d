module models.portals.entities.web.files.file;

@safe:
import models.portals;

// Storage of files used in the web Portals.
class DPortalWebFileEntity : DOOPEntity {
  mixin(EntityThis!("PortalWebFileEntity"));

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
        "webFileId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "stateCode": StringAttributeClass, // Status of the Web File"]),
        "stateCode_display": StringAttributeClass, // 
        "adxCreatedByIPAddress": StringAttributeClass, // 
        "adxCreatedByUsername": StringAttributeClass, // 
        "displayDate": DateAttributeClass, // 
        "displayOrder": StringAttributeClass, // 
        "hiddenFromSitemap": StringAttributeClass, // 
        "adxModifiedByIPAddress": StringAttributeClass, // 
        "adxModifiedByUsername": StringAttributeClass, // 
        "parentPageId": UUIDAttributeClass, // Unique identifier for Web Page associated with Web File."]),
        "partialUrl": UrlAttributeClass, // "]),
        "subjectId": UUIDAttributeClass, // Unique identifier for Subject associated with Web File."]),
        "summary": StringAttributeClass, // 
        "webSiteId": UUIDAttributeClass, // Unique identifier for Website associated with Web File."]),
        "allowOrigin": StringAttributeClass, // Defines CORS header Access-Control-Allow-Origin for cross origin requests."]),
        "cloudBlobAddress": StringAttributeClass, // 
        "contentDisposition": StringAttributeClass, // Shows the value to be applied to the HTTP Response Headers Content-Disposition."]),
        "contentDisposition_display": StringAttributeClass, // 
        "enableTracking": StringAttributeClass, // Select whether to enable logging of users' downloads of this web file."]),
        "excludeFromSearch": StringAttributeClass, // Shows whether the web file is excluded from the portal search."]),
        "expirationDate": DateAttributeClass, // 
        "masterWebFileId": UUIDAttributeClass, // Unique identifier for Web File associated with Web File."]),
        "publishingStateId": UUIDAttributeClass, // Unique identifier for Publishing State associated with Web File."]),
        "releaseDate": DateAttributeClass, // 
        "title": StringAttributeClass, // 
        "blogPostId": UUIDAttributeClass, // Unique identifier for Blog Post associated with Web File."]),
        "ideaId": UUIDAttributeClass, // Shows the Idea associated with the Web File."]),
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