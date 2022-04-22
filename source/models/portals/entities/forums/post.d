module models.portals.entities.forums.post;

@safe:
import models.portals;

// 
class DPortalForumPostEntity : DOOPEntity {
  mixin(OOPEntityThis!("PortalForumPostEntity"));

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
        "communityForumPostId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Forum Post"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the forum post's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "authorId": OOPUUIDAttribute.descriptions(["en":"Shows the contact associated with the forum post."]),
        "content": OOPStringAttribute.descriptions(["en":""]),
        "date": OOPStringAttribute.descriptions(["en":""]),
        "forumThreadId": OOPUUIDAttribute.descriptions(["en":"Shows the Forum Thread associated with the forum post."]),
        "helpfulVoteCount": OOPStringAttribute.descriptions(["en":""]),
        "isAnswer": OOPBooleanAttribute.descriptions(["en":""]),
        "publishingStateId": OOPUUIDAttribute.descriptions(["en":"Shows the Publishing State associated with the forum post."]),
        "regardingId": OOPUUIDAttribute.descriptions(["en":"Shows the forum post associated with the forum post."]),
      ])
      .registerPath("portal_forumposts");    
  }
}
mixin(OOPEntityCalls!("PortalForumPostEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalForumPostEntity);
  
  auto entity = PortalForumPostEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}