module models.portals.entities.polls.option;

@safe:
import models.portals;

// 
class DPortalPollOptionEntity : DEntity {
  mixin(EntityThis!("PortalPollOptionEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        PollIdAttribute, // Unique identifier for Poll associated with PollOption.
        StateCodeAttribute, // Status of the Poll Option
        StatusCodeAttribute, // Select the poll option's status.
      ])
      .addValues([
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "pollOptionId": UUIDAttribute, // Shows the entity instance.
        "answer": StringAttribute, // 
        "displayOrder": StringAttribute, // 
        "votes": StringAttribute, // 
      ])
      .registerPath("portal_polls.options")      
      .routingPath("/portals/polloptions");       
  }
}
mixin(EntityCalls!("PortalPollOptionEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalPollOptionEntity);
  
  auto entity = PortalPollOptionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}