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
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Status of the Poll Placement
        StatusCodeAttribute, // Select the poll placement's status.
      ])
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, // Shows who created the record on behalf of another user. "]),    
        "modifiedOnBehalfBy": UUIDAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "pollPlacementId": UUIDAttribute, // Shows the entity instance."]),
        "websiteId": UUIDAttribute, // Unique identifier for Website associated with Poll Placement."]),
        "webTemplateId": UUIDAttribute, // Unique identifier for Web Template associated with Poll Placement."]),
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