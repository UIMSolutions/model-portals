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
        "createdOnBehalfBy": UUIDAttribute, // Shows who created the record on behalf of another user. "]),
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
        "pollSubmissionId": UUIDAttribute, // Shows the entity instance."]),
        "stateCode": StringAttribute, // Status of the Poll Submission"]),
        "stateCode_display": StringAttribute, // 
        "contactId": UUIDAttribute, // en":"Unique identifier for Contact associated with Poll Submission."]),
        "pollId": UUIDAttribute, // Unique identifier for Poll associated with Poll Submission."]),
        "pollOptionId": UUIDAttribute, // Unique identifier for PollOption associated with Poll Submission."]),
        "visitorID": StringAttribute, // 
      ])
      .addValues([
        "statusCode": StatusCodeAttribute, // Select the poll submission's status.
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