module models.portals.entities.ideas.forum;

@safe:
import models.portals;

// The root entity for portal Ideas.
class DPortalIdeaForumEntity : DOOPEntity {
  mixin(EntityThis!("PortalIdeaForumEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "ideaForumId": UUIDAttributeClass, // Shows the entity instances."]),
        "stateCode": StringAttributeClass, // Shows whether the idea forum is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": StringAttributeClass, // "]),
        "commentPolicy": StringAttributeClass, // Shows the default comment policy to be used on ideas in this idea forum."]),
        "commentPolicy_display": StringAttributeClass, // "]),
        "ideaSubmissionPolicy": StringAttributeClass, // Indicates the policy to be enforced for user submitted ideas in this idea forum."]),
        "ideaSubmissionPolicy_display": StringAttributeClass, // "]),
        "partialUrl": OOPUrlAttribute.descriptions(["en":"Shows the URL path fragment used to generate a URL for this idea forum."]),
        "summary": StringAttributeClass, // Type a description of this idea forum's purpose."]),
        "votesPerIdea": StringAttributeClass, // Shows the number of votes a user is allowed for a single idea belonging to this idea forum."]),
        "votesPerUser": StringAttributeClass, // Shows the number of votes a user is allowed to use in this idea forum."]),
        "votingPolicy": StringAttributeClass, // Indicates the voting policy to be used for this idea forum."]),
        "votingPolicy_display": StringAttributeClass, // "]),
        "votingType": StringAttributeClass, // Shows the type of voting that this idea forum allows."]),
        "votingType_display": StringAttributeClass, // "]),
        "websiteId": UUIDAttributeClass, // Shows the website associated with the idea forum."]),
        "websiteLanguageId": UUIDAttributeClass, // Option to make idea forums language specific"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Select the idea forum's status.
      ])
      .registerPath("portal_ideaforums");   
  }
}
mixin(EntityCalls!("PortalIdeaForumEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalIdeaForumEntity);
  
  auto entity = PortalIdeaForumEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}