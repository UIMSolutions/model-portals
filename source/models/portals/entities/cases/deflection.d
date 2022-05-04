module models.portals.entities.cases.deflection;

@safe:
import models.portals;

// Captures the number of Found My Answer clicks in the portal.
class DPortalCaseDeflectionEntity : DOOPEntity {
  mixin(EntityThis!("PortalCaseDeflectionEntity"));

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
        "caseDeflectionId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "stateCode": StringAttributeClass, // Status of the Case Deflection"]),
        "stateCode_display": StringAttributeClass, // 
        "caseTitle": StringAttributeClass, // Title entered when the ticket was created."]),
        "contact": StringAttributeClass, // Contact who found the answer when the ticket was created."]),
        "knowledgeArticle": StringAttributeClass, // Knowledge Articles"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Reason for the status of the Case Deflection
      ])
      .registerPath("portal_casedeflections");    
  }
}
mixin(EntityCalls!("PortalCaseDeflectionEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalCaseDeflectionEntity);
  
  auto entity = PortalCaseDeflectionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}