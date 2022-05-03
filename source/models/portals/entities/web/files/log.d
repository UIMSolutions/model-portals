module models.portals.entities.web.files.log;

@safe:
import models.portals;

// A record of the download of a web file
class DPortalWebFileLogEntity : DOOPEntity {
  mixin(EntityThis!("PortalWebFileLogEntity"));

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
        "stateCode": StringAttributeClass, // Status of the Web File Log"]),
        "stateCode_display": StringAttributeClass, // 
        "contactId": UUIDAttributeClass, // en":"Unique identifier of the Contact associated with the Web File Log"]),
        "date": StringAttributeClass, // Shows the date and time that the request was made to download the file."]),
        "IpAddress": StringAttributeClass, // Shows the IP address of the computer of the user who requested the file download."]),
        "webFileId": UUIDAttributeClass, // Unique identifier of the Web File associated with the Web File Log"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Select the web file log's status.
      ])
      .registerPath("portal_webfilelogs");
  }
}
mixin(EntityCalls!("PortalWebFileLogEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalWebFileLogEntity);
  
  auto entity = PortalWebFileLogEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}