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
        "webpagelogId": UUIDAttributeClass, // Shows the entity instance."]),
        "stateCode": StringAttributeClass, // Status of the Web Page Log"]),
        "stateCode_display": StringAttributeClass, // 
        "contactId": UUIDAttributeClass, // en":"Unique identifier of the Contact associated with the Web Page Log"]),
        "date": StringAttributeClass, // Shows the date and time that the request was made to download the page."]),
        "IpAddress": StringAttributeClass, // Shows the IP address of the computer of the user who requested the file download."]),
        "webPageId": UUIDAttributeClass, // Unique identifier of the Web Page associated with the Web Page Log"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Select the webpage log's status.
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