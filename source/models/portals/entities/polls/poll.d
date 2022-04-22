module models.portals.entities.polls.poll;

@safe:
import models.portals;

// The root entity for portal Ideas.
class DPortalPollEntity : DOOPEntity {
  mixin(OOPEntityThis!("PortalPollEntity"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user. "]),
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
        "pollId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instance."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Poll"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the poll's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "active": OOPStringAttribute.descriptions(["en":""]),
        "closeVotingDate": OOPAttributeDate.descriptions(["en":""]),
        "expirationDate": OOPAttributeDate.descriptions(["en":""]),
        "question": OOPStringAttribute.descriptions(["en":""]),
        "releaseDate": OOPAttributeDate.descriptions(["en":""]),
        "submitButtonLabel": OOPStringAttribute.descriptions(["en":""]),
        "websiteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Website associated with Poll."]),
        "webTemplateId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Web Template associated with Poll."]),
      ])
      .registerPath("portal_polls");   
  }
}
mixin(OOPEntityCalls!("PortalPollEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalPollEntity);
  
  auto entity = PortalPollEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}