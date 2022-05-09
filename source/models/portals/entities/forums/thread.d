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
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Forum Thread
        StatusCodeAttribute, // Select the forum thread's status.
      ])
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, // Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": UUIDAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "communityForumThreadId": UUIDAttribute, // Shows the entity instances."]),
        "firstPostId": UUIDAttribute, // Shows the forum post associated with the forum thread."]),
        "forumId": UUIDAttribute, // Shows the forum associated with the forum thread."]),
        "isAnswered": BooleanAttribute, //
        "lastPostDate": DateAttribute, // 
        "lastPostId": UUIDAttribute, // Shows the forum post associated with the forum thread."]),
        "locked": StringAttribute, // 
        "postCount": StringAttribute, // 
        "publishingStateId": UUIDAttribute, // Shows the publishing state associated with the forum thread."]),
        "sticky": StringAttribute, // 
        "typeId": UUIDAttribute, // Shows the forum Thread Type associated with the forum thread."]),
        "viewCount": StringAttribute, // 
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