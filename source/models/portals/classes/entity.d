module models.portals.classes.entity;

@safe:
import models.portals;

class DPTLEntity : DOOPEntity {
  mixin(EntityThis!("PTLEntity"));

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
        "owningTeamId": TeamIdAttributeClass, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "adId": UUIDAttributeClass, // 
        "copy": StringAttributeClass, // 
        "expirationDate": DateAttributeClass, // 
        "image": StringAttributeClass, // location of image file"]),
        "imageAltText": StringAttributeClass, // 
        "imageHeight": StringAttributeClass, // 
        "imageWidth": StringAttributeClass, // 
        "openInNewWindow": StringAttributeClass, // 
        "publishingStateId": UUIDAttributeClass, // Unique identifier for Publishing State associated with Ad."]),
        "redirectWebFile": StringAttributeClass, // Unique identifier for Web File associated with Ad."]),
        "releaseDate": DateAttributeClass, // 
        "title": StringAttributeClass, // 
        "Url": OOPUrlAttribute.descriptions(["en":""]),
        "webFileId": UUIDAttributeClass, // Unique identifier for Web File associated with Ad."]),
        "webPageId": UUIDAttributeClass, // Unique identifier for Web Page associated with Ad."]),
        "webSiteId": UUIDAttributeClass, // Unique identifier for Website associated with Ad."]),
        "webTemplateId": UUIDAttributeClass, // Unique identifier for Web Template associated with Ad."]),
      ])
      .addValues([
        StateCodeAttributeClass, // Shows the entity instance.
        StatusCodeAttributeClass, // 
      ]);
  }
}
mixin(EntityCalls!("PTLEntity"));

version(test_model_portals) {
  unittest {
    assert(PTLAd);
  
  auto entity = PTLAd;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}