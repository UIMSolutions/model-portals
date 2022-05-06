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
        "createdOnBehalfBy": UUIDAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "stateCode": StringAttribute, // Status of the Web File Log"]),
        "stateCode_display": StringAttribute, // 
        "contactId": UUIDAttribute, // en":"Unique identifier of the Contact associated with the Web File Log"]),
        "date": StringAttribute, // Shows the date and time that the request was made to download the file."]),
        "IpAddress": StringAttribute, // Shows the IP address of the computer of the user who requested the file download."]),
        "webFileId": UUIDAttribute, // Unique identifier of the Web File associated with the Web File Log"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttribute, // Select the web file log's status.
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