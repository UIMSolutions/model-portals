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
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user. "]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Poll Submission"]),
        StatusCodeAttribute, // Select the poll submission's status.
      ])
      .addValues([
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "pollSubmissionId": UUIDAttribute, // Shows the entity instance."]),
        "contactId": UUIDAttribute, // en":"Unique identifier for Contact associated with Poll Submission."]),
        "pollId": UUIDAttribute, // Unique identifier for Poll associated with Poll Submission."]),
        "pollOptionId": UUIDAttribute, // Unique identifier for PollOption associated with Poll Submission."]),
        "visitorID": StringAttribute, // 
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