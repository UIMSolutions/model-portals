module models.portals.entities.polls.option;

@safe:
import models.portals;

// 
class DPortalPollOptionEntity : DOOPEntity {
  mixin(EntityThis!("PortalPollOptionEntity"));

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
        "pollOptionId": UUIDAttribute, // Shows the entity instance."]),
        "answer": StringAttribute, // 
        "displayOrder": StringAttribute, // 
        "pollId": UUIDAttribute, // Unique identifier for Poll associated with PollOption."]),
        "votes": StringAttribute, // 
      ])
      .addValues([
        "stateCode": StateCodeAttribute, // Status of the Poll Option
        "statusCode": StatusCodeAttribute, // Select the poll option's status.
      ])
      .registerPath("portal_polloptions");   
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