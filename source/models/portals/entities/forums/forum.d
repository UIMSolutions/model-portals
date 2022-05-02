module models.portals.entities.forums.forum;

@safe:
import models.portals;

// 
class DPortalForumEntity : DOOPEntity {
  mixin(EntityThis!("PortalForumEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "communityForumId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instances."]),
        "partialUrl": OOPUrlAttribute.descriptions(["en":""]),
        "websiteId": OOPUUIDAttribute.descriptions(["en":"Shows the Website associated with the forum."]),
        "forumLanguageId": OOPUUIDAttribute.descriptions(["en":"Option to make forums and forum posts language specific"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Select the forum's status.
        "postCount": StringAttributeClass, // 
        "publishingStateId": StringAttributeClass, // Shows the Publishing State associated with the forum.
        "threadCount": StringAttributeClass, // 
        "threadPageTemplateId": StringAttributeClass, // Shows the Page Template associated with the forum.
        "displayOrder": StringAttributeClass, // 
        "enableQueuedPosts": StringAttributeClass, // Automatically put posts in a queue awaiting a moderator to approve
        "forumPageTemplateId": StringAttributeClass, // Shows the Page Template associated with the forum.
        "hiddenFromSitemap": StringAttributeClass, // 
        "lastPostId": UUIDAttributeClass, // Shows the forum post associated with the forum.
        "parentPageId": UUIDAttributeClass, // Shows the webpage associated with the forum.
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team.
        "stateCode": StateCodeAttributeClass, // Status of the Forum
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created.
      ])
      .registerPath("portal_forums");    
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