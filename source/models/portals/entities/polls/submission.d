module models.portals.entities.polls.submission;

@safe:
import models.portals;

// The root entity for portal Ideas.
class DPortalPollSubmissionEntity : DEntity {
  mixin(EntityThis!("PortalPollSubmissionEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        ContactIdAttribute, // en":"Unique identifier for Contact associated with Poll Submission."]),
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user. "]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id"]),
        PollIdAttribute, // Unique identifier for Poll associated with Poll Submission."]),
        PollOptionIdAttribute, // Unique identifier for PollOption associated with Poll Submission."]),
        PollSubmissionIdAttribute, // Shows the entity instance."]),
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
        "visitorID": StringAttribute, // 
      ])
      .registerPath("portal_polls.submissions")      
      .routingPath("/portals/pollsubmissions");       
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