module models.portals.entities.web.pages.log;

@safe:
import models.portals;

// A record of a user viewing a Web Page
class DPortalWebPageLogEntity : DOOPEntity {
  mixin(EntityThis!("PortalWebPageLogEntity"));

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
        "webpagelogId": UUIDAttribute, // Shows the entity instance."]),
        "stateCode": StringAttribute, // Status of the Web Page Log"]),
        "stateCode_display": StringAttribute, // 
        "contactId": UUIDAttribute, // en":"Unique identifier of the Contact associated with the Web Page Log"]),
        "date": StringAttribute, // Shows the date and time that the request was made to download the page."]),
        "IpAddress": StringAttribute, // Shows the IP address of the computer of the user who requested the file download."]),
        "webPageId": UUIDAttribute, // Unique identifier of the Web Page associated with the Web Page Log"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttribute, // Select the webpage log's status.
      ])
      .registerPath("portal_webpagelogs");
  }
}
mixin(EntityCalls!("PortalWebPageLogEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalWebPageLogEntity);
  
  auto entity = PortalWebPageLogEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}