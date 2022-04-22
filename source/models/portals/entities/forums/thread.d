module models.portals.entities.forums.thread;

@safe:
import models.portals;

// 
class DPortalForumThreadEntity : DOOPEntity {
  mixin(OOPEntityThis!("PortalForumThreadEntity"));

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
        "communityForumThreadId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Forum Thread"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the forum thread's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "firstPostId": OOPUUIDAttribute.descriptions(["en":"Shows the forum post associated with the forum thread."]),
        "forumId": OOPUUIDAttribute.descriptions(["en":"Shows the forum associated with the forum thread."]),
        "isAnswered": OOPBooleanAttribute.descriptions(["en":""]),
        "lastPostDate": OOPAttributeDate.descriptions(["en":""]),
        "lastPostId": OOPUUIDAttribute.descriptions(["en":"Shows the forum post associated with the forum thread."]),
        "locked": OOPStringAttribute.descriptions(["en":""]),
        "postCount": OOPStringAttribute.descriptions(["en":""]),
        "publishingStateId": OOPUUIDAttribute.descriptions(["en":"Shows the publishing state associated with the forum thread."]),
        "sticky": OOPStringAttribute.descriptions(["en":""]),
        "typeId": OOPUUIDAttribute.descriptions(["en":"Shows the forum Thread Type associated with the forum thread."]),
        "viewCount": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("portal_forumthreads");   
  }
}
mixin(OOPEntityCalls!("PortalForumThreadEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalForumThreadEntity);
  
  auto entity = PortalForumThreadEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}