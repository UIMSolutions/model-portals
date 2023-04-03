module models.portals.entities.ideas.forum;

@safe:
import models.portals;

// The root entity for portal Ideas.
class DPortalIdeaForumEntity : DEntity {
  mixin(EntityThis!("PortalIdeaForumEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user. 
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Shows whether the idea forum is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute, // Select the idea forum's status.
        WebSiteIdAttribute, // Shows the website associated with the idea forum.
        WebSiteLanguageIdAttribute, // Option to make idea forums language specific
      ])
      .addValues([
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "ideaForumId": UUIDAttribute, // Shows the entity instances.
        "commentPolicy": StringAttribute, // Shows the default comment policy to be used on ideas in this idea forum.
        "commentPolicy_display": StringAttribute, // 
        "ideaSubmissionPolicy": StringAttribute, // Indicates the policy to be enforced for user submitted ideas in this idea forum.
        "ideaSubmissionPolicy_display": StringAttribute, // 
        "partialUrl": UrlAttribute, // Shows the URL path fragment used to generate a URL for this idea forum.
        "summary": StringAttribute, // Type a description of this idea forum's purpose.
        "votesPerIdea": StringAttribute, // Shows the number of votes a user is allowed for a single idea belonging to this idea forum.
        "votesPerUser": StringAttribute, // Shows the number of votes a user is allowed to use in this idea forum.
        "votingPolicy": StringAttribute, // Indicates the voting policy to be used for this idea forum.
        "votingPolicy_display": StringAttribute, // 
        "votingType": StringAttribute, // Shows the type of voting that this idea forum allows.
        "votingType_display": StringAttribute, // 
      ])
      .registerPath("portal_ideaforums")      
      .routingPath("/portals/ideaforums");       
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