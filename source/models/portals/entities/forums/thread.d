module models.portals.entities.forums.thread;

@safe:
import models.portals;

// 
class DPortalForumThreadEntity : DOOPEntity {
  mixin(EntityThis!("PortalForumThreadEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttributeClass, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "communityForumThreadId": UUIDAttributeClass, // Shows the entity instances."]),
        "firstPostId": UUIDAttributeClass, // Shows the forum post associated with the forum thread."]),
        "forumId": UUIDAttributeClass, // Shows the forum associated with the forum thread."]),
        "isAnswered": BooleanAttributeClass, //
        "lastPostDate": DateAttributeClass, // 
        "lastPostId": UUIDAttributeClass, // Shows the forum post associated with the forum thread."]),
        "locked": StringAttributeClass, // 
        "postCount": StringAttributeClass, // 
        "publishingStateId": UUIDAttributeClass, // Shows the publishing state associated with the forum thread."]),
        "sticky": StringAttributeClass, // 
        "typeId": UUIDAttributeClass, // Shows the forum Thread Type associated with the forum thread."]),
        "viewCount": StringAttributeClass, // 
      ])
      .addValues([
        "stateCode": StateCodeAttributeClass, // Status of the Forum Thread
        "statusCode": StatusCodeAttributeClass, // Select the forum thread's status.
      ])
      .registerPath("portal_forumthreads");   
  }
}
mixin(EntityCalls!("PortalForumThreadEntity"));

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