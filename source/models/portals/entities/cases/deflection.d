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
        "caseDeflectionId": UUIDAttribute, // Unique identifier for entity instances"]),
        "stateCode": StringAttribute, // Status of the Case Deflection"]),
        "stateCode_display": StringAttribute, // 
        "caseTitle": StringAttribute, // Title entered when the ticket was created."]),
        "contact": StringAttribute, // Contact who found the answer when the ticket was created."]),
        "knowledgeArticle": StringAttribute, // Knowledge Articles"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttribute, // Reason for the status of the Case Deflection
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