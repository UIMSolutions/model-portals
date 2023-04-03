module models.portals.entities.web.files.log;

@safe:
import models.portals;

// A record of the download of a web file
class DPortalWebFileLogEntity : DEntity {
  mixin(EntityThis!("PortalWebFileLogEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        ContactIdAttribute, // en":"Unique identifier of the Contact associated with the Web File Log
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Status of the Web File Log
        StatusCodeAttribute, // Select the web file log's status.
        WebFileIdAttribute, // Unique identifier of the Web File associated with the Web File Log
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
        "date": StringAttribute, // Shows the date and time that the request was made to download the file.
        "IpAddress": StringAttribute, // Shows the IP address of the computer of the user who requested the file download.
      ])
      .registerPath("portal_web.filelogs")      
      .routingPath("/portals/webfilelogs");    
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