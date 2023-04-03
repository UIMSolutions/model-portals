module models.portals.entities.forums.post;

@safe:
import models.portals;

// 
class DPortalForumPostEntity : DEntity {
  mixin(EntityThis!("PortalForumPostEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user. 
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Status of the Forum Post
        StatusCodeAttribute, // Select the forum post's status.
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "communityForumPostId": UUIDAttribute, // Shows the entity instances.
        "authorId": UUIDAttribute, // Shows the contact associated with the forum post.
        "forumThreadId": UUIDAttribute, // Shows the Forum Thread associated with the forum post.
        "isAnswer": BooleanAttribute, //
        "content": StringAttribute, // 
        "date": StringAttribute, // 
        "helpfulVoteCount": StringAttribute, // 
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "publishingStateId": UUIDAttribute, // Shows the Publishing State associated with the forum post.
        "regardingId": UUIDAttribute, // Shows the forum post associated with the forum post.
      ])      
      .registerPath("portal_forums.posts")      
      .routingPath("/portals/forumposts");        
  }
}
mixin(EntityCalls!("PortalForumPostEntity"));

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