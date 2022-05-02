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
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user. "]),    
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "pollPlacementId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instance."]),
        "websiteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Website associated with Poll Placement."]),
        "webTemplateId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Web Template associated with Poll Placement."]),
      ])
      .addValues([
        "stateCode": StateCodeAttributeClass, // Status of the Poll Placement
        "statusCode": StatusCodeAttributeClass, // Select the poll placement's status.
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