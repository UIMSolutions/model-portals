module models.portals.entities.polls.placement;

@safe:
import models.portals;

// The root entity for portal Ideas.
class DPortalPollPlacementEntity : DOOPEntity {
  mixin(EntityThis!("PortalPollPlacementEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        OwnerIdAttributeClass, // Owner Id
        StateCodeAttributeClass, // Status of the Poll Placement
        StatusCodeAttributeClass, // Select the poll placement's status.
      ])
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user. "]),    
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttributeClass, //Sequence number of the import that created this record."]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttributeClass, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "pollPlacementId": UUIDAttributeClass, // Shows the entity instance."]),
        "websiteId": UUIDAttributeClass, // Unique identifier for Website associated with Poll Placement."]),
        "webTemplateId": UUIDAttributeClass, // Unique identifier for Web Template associated with Poll Placement."]),
      ])
      .registerPath("portal_pollplacements");
  }
}
mixin(EntityCalls!("PortalPollPlacementEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalPollPlacementEntity);
  
  auto entity = PortalPollPlacementEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}