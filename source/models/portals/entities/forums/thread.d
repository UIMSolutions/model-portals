module models.portals.entities.forums.thread;

@safe:
import models.portals;

// 
class DPortalForumThreadEntity : DEntity {
  mixin(EntityThis!("PortalForumThreadEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user. "]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        FirstPostIdAttribute, // Shows the forum post associated with the forum thread."]),
        LastPostIdAttribute, // Shows the forum post associated with the forum thread."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Forum Thread
        StatusCodeAttribute, // Select the forum thread's status.
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
        "communityForumThreadId": UUIDAttribute, // Shows the entity instances."]),
        "forumId": UUIDAttribute, // Shows the forum associated with the forum thread."]),
        "isAnswered": BooleanAttribute, //
        "lastPostDate": DateAttribute, // 
        "locked": StringAttribute, // 
        "postCount": StringAttribute, // 
        "publishingStateId": UUIDAttribute, // Shows the publishing state associated with the forum thread."]),
        "sticky": StringAttribute, // 
        "typeId": UUIDAttribute, // Shows the forum Thread Type associated with the forum thread."]),
        "viewCount": StringAttribute, // 
      ])
      .registerPath("portal_forums.threads")      
      .routingPath("/portals/forumthreads");       
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