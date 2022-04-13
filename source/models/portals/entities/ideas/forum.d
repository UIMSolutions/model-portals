module models.portals.entities.ideas.forum;

@safe:
import models.portals;

// The root entity for portal Ideas.
class DPortalIdeaForum : DOOPEntity {
  mixin(OOPEntityThis!("PortalIdeaForum"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "ideaForumId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the idea forum is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the idea forum's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "commentPolicy": OOPStringAttribute.descriptions(["en":"Shows the default comment policy to be used on ideas in this idea forum."]),
        "commentPolicy_display": OOPStringAttribute.descriptions(["en":""]),
        "ideaSubmissionPolicy": OOPStringAttribute.descriptions(["en":"Indicates the policy to be enforced for user submitted ideas in this idea forum."]),
        "ideaSubmissionPolicy_display": OOPStringAttribute.descriptions(["en":""]),
        "partialUrl": OOPUrlAttribute.descriptions(["en":"Shows the URL path fragment used to generate a URL for this idea forum."]),
        "summary": OOPStringAttribute.descriptions(["en":"Type a description of this idea forum's purpose."]),
        "votesPerIdea": OOPStringAttribute.descriptions(["en":"Shows the number of votes a user is allowed for a single idea belonging to this idea forum."]),
        "votesPerUser": OOPStringAttribute.descriptions(["en":"Shows the number of votes a user is allowed to use in this idea forum."]),
        "votingPolicy": OOPStringAttribute.descriptions(["en":"Indicates the voting policy to be used for this idea forum."]),
        "votingPolicy_display": OOPStringAttribute.descriptions(["en":""]),
        "votingType": OOPStringAttribute.descriptions(["en":"Shows the type of voting that this idea forum allows."]),
        "votingType_display": OOPStringAttribute.descriptions(["en":""]),
        "websiteId": OOPUUIDAttribute.descriptions(["en":"Shows the website associated with the idea forum."]),
        "websiteLanguageId": OOPUUIDAttribute.descriptions(["en":"Option to make idea forums language specific"]),
      ])
      .registerPath("portal_ideaforums");   
  }
}
mixin(OOPEntityCalls!("PortalIdeaForum"));

version(test_model_portals) {
  unittest {
    assert(PortalIdeaForum);
  
  auto entity = PortalIdeaForum;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}