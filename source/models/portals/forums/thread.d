module models.portals.forums.thread;

@safe:
import models.portals;

// 
class DPTLForumThread : DOOPEntity {
  mixin(OOPEntityThis!("PTLForumThread"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_forumthreads")   
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "communityForumThreadId": OOPAttributeUUID.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPAttributeString.descriptions(["en":"Status of the Forum Thread"]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Select the forum thread's status."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "firstPostId": OOPAttributeUUID.descriptions(["en":"Shows the forum post associated with the forum thread."]),
        "forumId": OOPAttributeUUID.descriptions(["en":"Shows the forum associated with the forum thread."]),
        "isAnswered": OOPAttributeBoolean.descriptions(["en":""]),
        "lastPostDate": OOPAttributeDate.descriptions(["en":""]),
        "lastPostId": OOPAttributeUUID.descriptions(["en":"Shows the forum post associated with the forum thread."]),
        "locked": OOPAttributeString.descriptions(["en":""]),
        "postCount": OOPAttributeString.descriptions(["en":""]),
        "publishingStateId": OOPAttributeUUID.descriptions(["en":"Shows the publishing state associated with the forum thread."]),
        "sticky": OOPAttributeString.descriptions(["en":""]),
        "typeId": OOPAttributeUUID.descriptions(["en":"Shows the forum Thread Type associated with the forum thread."]),
        "viewCount": OOPAttributeString.descriptions(["en":""]),
      ]);
  }
}
mixin(OOPEntityCalls!("PTLForumThread"));

version(test_model_portals) {
  unittest {
    assert(PTLForumThread);
  
  auto entity = PTLForumThread;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}