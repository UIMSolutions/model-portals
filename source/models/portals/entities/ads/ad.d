module models.portals.entities.ads.ad;

@safe:
import models.portals;

// Ad that is attached to one or more objects, including other notes.
class DPortalAdEntity : DOOPEntity {
  mixin(EntityThis!("PortalAdEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttributeClass, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "adId": UUIDAttributeClass, // Shows the entity instance."]),
        "stateCode": StringAttributeClass, // Status of the Ad"]),
        "stateCode_display": StringAttributeClass, // "]),
        "copy": StringAttributeClass, // "]),
        "expirationDate": OOPAttributeDate.descriptions(["en":""]),
        "image": StringAttributeClass, // location of image file"]),
        "imageAltText": StringAttributeClass, // "]),
        "imageHeight": StringAttributeClass, // "]),
        "imageWidth": StringAttributeClass, // "]),
        "openInNewWindow": StringAttributeClass, // "]),
        "publishingStateId": UUIDAttributeClass, // Unique identifier for Publishing State associated with Ad."]),
        "redirectWebFile": StringAttributeClass, // Unique identifier for Web File associated with Ad."]),
        "releaseDate": OOPAttributeDate.descriptions(["en":""]),
        "title": StringAttributeClass, // "]),
        "Url": OOPUrlAttribute.descriptions(["en":""]),
        "webFileId": UUIDAttributeClass, // Unique identifier for Web File associated with Ad."]),
        "webPageId": UUIDAttributeClass, // Unique identifier for Web Page associated with Ad."]),
        "webSiteId": UUIDAttributeClass, // Unique identifier for Website associated with Ad."]),
        "webTemplateId": UUIDAttributeClass, // Unique identifier for Web Template associated with Ad."]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Select the ad's status.
      ])
      .registerPath("portal_ads");

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