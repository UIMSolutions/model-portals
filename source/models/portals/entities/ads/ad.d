module models.portals.entities.ads.ad;

@safe:
import models.portals;

// Ad that is attached to one or more objects, including other notes.
class DPortalAdEntity : DEntity {
  mixin(EntityThis!("PortalAdEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Ad"]),
        StatusCodeAttribute, // Select the ad's status.
        WebFileIdAttribute, // Unique identifier for Web File associated with Ad."]),
        WebPageIdAttribute, // Unique identifier for Web Page associated with Ad."]),
        WebSiteIdAttribute, // Unique identifier for Website associated with Ad."]),
        WebTemplateIdAttribute, // Unique identifier for Web Template associated with Ad."]),
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "adId": UUIDAttribute, // Shows the entity instance."]),
        "copy": StringAttribute, // 
        "expirationDate": DateAttribute, // 
        "image": StringAttribute, // location of image file"]),
        "imageAltText": StringAttribute, // 
        "imageHeight": StringAttribute, // 
        "imageWidth": StringAttribute, // 
        "openInNewWindow": StringAttribute, // 
        "publishingStateId": UUIDAttribute, // Unique identifier for Publishing State associated with Ad."]),
        "redirectWebFile": StringAttribute, // Unique identifier for Web File associated with Ad."]),
        "releaseDate": DateAttribute, // 
        "title": StringAttribute, // 
        "Url": UrlAttribute, // "]),
      ])
      .registerPath("portal_ads")      
      .routingPath("/portals/ads");
  }

  /* auto webFile() {  
    if ("webFileId" in this.attributes) {
      if (collection && collection.tenant) {
        return collection.tenant[PortalWebFile.entityClasses].findOne(["id": this.attributes["webFileId"].toString]);
      }}
    return null; }  
  unittest {
    version(test_model_portals) {
      // TODO
    }}

  auto webPage() {  
    if ("webPageId" in this.attributes) {
      if (collection && collection.tenant) {
        auto tenant = collection.tenant;  
        return collection.tenant[PortalWebPage.entityClasses].findOne(["id": this.attributes["webPageId"].toString]);
      }}
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO
    }}

  auto webSite() {  
    if ("webSiteId" in this.attributes) {
      auto id = this.attributes["webSiteId"].toString;
      if (collection && collection.tenant) {
        return collection.tenant[PortalWebSite.entityClasses].findOne(["id":id]);
      }
    }
    return null;
  } */
}
mixin(EntityCalls!("PortalAdEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalAdEntity);
  
  auto entity = PortalAdEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}