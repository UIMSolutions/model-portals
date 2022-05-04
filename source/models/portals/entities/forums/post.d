module models.portals.entities.forums.post;

@safe:
import models.portals;

// 
class DPortalForumPostEntity : DOOPEntity {
  mixin(EntityThis!("PortalForumPostEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        OwnerIdAttributeClass, // Owner Id
        StateCodeAttributeClass, // Status of the Forum Post
        StatusCodeAttributeClass, // Select the forum post's status.
      ])
      .addValues([ // individual values
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttributeClass, //Sequence number of the import that created this record."]),
        "owningBusinessUnitId": UUIDAttributeClass, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttributeClass, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "communityForumPostId": UUIDAttributeClass, // Shows the entity instances."]),
        "authorId": UUIDAttributeClass, // Shows the contact associated with the forum post."]),
        "forumThreadId": UUIDAttributeClass, // Shows the Forum Thread associated with the forum post."]),
        "isAnswer": BooleanAttributeClass, //
        "content": StringAttributeClass, // 
        "date": StringAttributeClass, // 
        "helpfulVoteCount": StringAttributeClass, // 
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team.
        "publishingStateId": UUIDAttributeClass, // Shows the Publishing State associated with the forum post.
        "regardingId": UUIDAttributeClass, // Shows the forum post associated with the forum post.
      ])      
      .registerPath("portal_forumposts");    
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