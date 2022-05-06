module models.portals.classes.entity;

@safe:
import models.portals;

class DPTLEntity : DOOPEntity {
  mixin(EntityThis!("PTLEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Shows the entity instance.
        StatusCodeAttribute, // 
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "adId": UUIDAttribute, // 
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
        "webFileId": UUIDAttribute, // Unique identifier for Web File associated with Ad."]),
        "webPageId": UUIDAttribute, // Unique identifier for Web Page associated with Ad."]),
        "webSiteId": UUIDAttribute, // Unique identifier for Website associated with Ad."]),
        "webTemplateId": UUIDAttribute, // Unique identifier for Web Template associated with Ad."]),
      ])
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