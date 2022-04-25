module models.portals.entities.polls.option;

@safe:
import models.portals;

// 
class DPortalPollOptionEntity : DOOPEntity {
  mixin(EntityThis!("PortalPollOptionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "pollOptionId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instance."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Poll Option"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the poll option's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "answer": OOPStringAttribute.descriptions(["en":""]),
        "displayOrder": OOPStringAttribute.descriptions(["en":""]),
        "pollId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Poll associated with PollOption."]),
        "votes": OOPStringAttribute.descriptions(["en":""]),
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