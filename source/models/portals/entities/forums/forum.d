module models.portals.entities.forums.forum;

@safe:
import models.portals;

// 
class DPortalForumEntity : DEntity {
  mixin(EntityThis!("PortalForumEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user. "]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Forum
        StatusCodeAttribute, // Select the forum's status.
        WebSiteIdAttribute, // Shows the Website associated with the forum."]),
      ])
      .addValues([
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "communityForumId": UUIDAttribute, // Shows the entity instances."]),
        "partialUrl": UrlAttribute, // "]),
        "forumLanguageId": UUIDAttribute, // Option to make forums and forum posts language specific"]),
        "postCount": StringAttribute, // 
        "publishingStateId": UUIDAttribute, // Shows the Publishing State associated with the forum.
        "threadCount": StringAttribute, // 
        "threadPageTemplateId": UUIDAttribute, // Shows the Page Template associated with the forum.
        "displayOrder": StringAttribute, // 
        "enableQueuedPosts": StringAttribute, // Automatically put posts in a queue awaiting a moderator to approve
        "forumPageTemplateId": UUIDAttribute, // Shows the Page Template associated with the forum.
        "hiddenFromSitemap": StringAttribute, // 
        "lastPostId": UUIDAttribute, // Shows the forum post associated with the forum.
        "parentPageId": UUIDAttribute, // Shows the webpage associated with the forum.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
      ])
      .registerPath("portal_forums")      
      .routingPath("/portals/forums");        
  }
}
mixin(EntityCalls!("PortalForumEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalForumEntity);
  
  auto entity = PortalForumEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}