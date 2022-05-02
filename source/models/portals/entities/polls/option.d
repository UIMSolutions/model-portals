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
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttributeClass, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "pollOptionId": UUIDAttributeClass, // Shows the entity instance."]),
        "answer": StringAttributeClass, // "]),
        "displayOrder": StringAttributeClass, // "]),
        "pollId": UUIDAttributeClass, // Unique identifier for Poll associated with PollOption."]),
        "votes": StringAttributeClass, // "]),
      ])
      .addValues([
        "stateCode": StateCodeAttributeClass, // Status of the Poll Option
        "statusCode": StatusCodeAttributeClass, // Select the poll option's status.
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