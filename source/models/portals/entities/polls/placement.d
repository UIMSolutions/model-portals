module models.portals.entities.polls.placement;

@safe:
import models.portals;

// The root entity for portal Ideas.
class DPortalPollPlacementEntity : DEntity {
  mixin(EntityThis!("PortalPollPlacementEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user. "]),    
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Status of the Poll Placement
        StatusCodeAttribute, // Select the poll placement's status.
        WebSiteIdAttribute, // Unique identifier for Website associated with Poll Placement."]),
        WebTemplateIdAttribute, // Unique identifier for Web Template associated with Poll Placement."]),
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
        "pollPlacementId": UUIDAttribute, // Shows the entity instance."]),
      ])
      .registerPath("portal_polls.placements")      
      .routingPath("/portals/pollplacements");    

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