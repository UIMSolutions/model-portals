module models.portals.entities.web.files.file;

@safe:
import models.portals;

// Storage of files used in the web Portals.
class DPortalWebFileEntity : DEntity {
  mixin(EntityThis!("PortalWebFileEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Status of the Web File
        StatusCodeAttribute, // Reason for the status of the Web File
        WebFileIdAttribute, // Unique identifier for entity instances
        WebSiteIdAttribute, // Unique identifier for Website associated with Web File.
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
        "adxCreatedByIPAddress": StringAttribute, // 
        "adxCreatedByUsername": StringAttribute, // 
        "displayDate": DateAttribute, // 
        "displayOrder": StringAttribute, // 
        "hiddenFromSitemap": StringAttribute, // 
        "adxModifiedByIPAddress": StringAttribute, // 
        "adxModifiedByUsername": StringAttribute, // 
        "parentPageId": UUIDAttribute, // Unique identifier for Web Page associated with Web File.
        "partialUrl": UrlAttribute, // 
        "subjectId": UUIDAttribute, // Unique identifier for Subject associated with Web File.
        "summary": StringAttribute, // 
        "allowOrigin": StringAttribute, // Defines CORS header Access-Control-Allow-Origin for cross origin requests.
        "cloudBlobAddress": StringAttribute, // 
        "contentDisposition": StringAttribute, // Shows the value to be applied to the HTTP Response Headers Content-Disposition.
        "contentDisposition_display": StringAttribute, // 
        "enableTracking": StringAttribute, // Select whether to enable logging of users' downloads of this web file.
        "excludeFromSearch": StringAttribute, // Shows whether the web file is excluded from the portal search.
        "expirationDate": DateAttribute, // 
        "masterWebFileId": WebFileIdAttribute, // Unique identifier for Web File associated with Web File.
        "publishingStateId": UUIDAttribute, // Unique identifier for Publishing State associated with Web File.
        "releaseDate": DateAttribute, // 
        "title": StringAttribute, // 
        "blogPostId": UUIDAttribute, // Unique identifier for Blog Post associated with Web File.
        "ideaId": UUIDAttribute, // Shows the Idea associated with the Web File.
      ])
      .registerPath("portal_web.files")      
      .routingPath("/portals/webfiles");    
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