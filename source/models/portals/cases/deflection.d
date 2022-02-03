module models.portals.cases.deflection;

@safe:
import models.portals;

// Captures the number of Found My Answer clicks in the portal.
class DPTLCaseDeflection : DOOPEntity {
  mixin(OOPEntityThis!("PTLCaseDeflection"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_casedeflections")    
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "caseDeflectionId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPAttributeString.descriptions(["en":"Status of the Case Deflection"]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Case Deflection"]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "caseTitle": OOPAttributeString.descriptions(["en":"Title entered when the ticket was created."]),
        "contact": OOPAttributeString.descriptions(["en":"Contact who found the answer when the ticket was created."]),
        "knowledgeArticle": OOPAttributeString.descriptions(["en":"Knowledge Articles"]),
      ]);
  }
}
mixin(OOPEntityCalls!("PTLCaseDeflection"));

version(test_model_portals) {
  unittest {
    assert(PTLCaseDeflection);
  
  auto entity = PTLCaseDeflection;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}