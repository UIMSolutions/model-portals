module models.portals.entities.polls.submission;

@safe:
import models.portals;

// The root entity for portal Ideas.
class DPortalPollSubmissionEntity : DOOPEntity {
  mixin(EntityThis!("PortalPollSubmissionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "pollSubmissionId": UUIDAttributeClass, // Shows the entity instance."]),
        "stateCode": StringAttributeClass, // Status of the Poll Submission"]),
        "stateCode_display": StringAttributeClass, // "]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Unique identifier for Contact associated with Poll Submission."]),
        "pollId": UUIDAttributeClass, // Unique identifier for Poll associated with Poll Submission."]),
        "pollOptionId": UUIDAttributeClass, // Unique identifier for PollOption associated with Poll Submission."]),
        "visitorID": StringAttributeClass, // "]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Select the poll submission's status.
      ])
      .registerPath("portal_pollsubmissions");   
  }
}
mixin(EntityCalls!("PortalPollSubmissionEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalPollSubmissionEntity);
  
  auto entity = PortalPollSubmissionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}