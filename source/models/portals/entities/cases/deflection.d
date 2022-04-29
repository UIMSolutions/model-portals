module models.portals.entities.cases.deflection;

@safe:
import models.portals;

// Captures the number of Found My Answer clicks in the portal.
class DPortalCaseDeflectionEntity : DOOPEntity {
  mixin(EntityThis!("PortalCaseDeflectionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "caseDeflectionId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Case Deflection"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "caseTitle": OOPStringAttribute.descriptions(["en":"Title entered when the ticket was created."]),
        "contact": OOPStringAttribute.descriptions(["en":"Contact who found the answer when the ticket was created."]),
        "knowledgeArticle": OOPStringAttribute.descriptions(["en":"Knowledge Articles"]),
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