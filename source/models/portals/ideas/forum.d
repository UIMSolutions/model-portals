module models.portals.ideas.forum;

@safe:
import models.portals;

// The root entity for portal Ideas.
class DPTLIdeaForum : DOOPEntity {
  mixin(OOPEntityThis!("PTLIdeaForum"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_ideaforums")   
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "ideaForumId": OOPAttributeUUID.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPAttributeString.descriptions(["en":"Shows whether the idea forum is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Select the idea forum's status."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "commentPolicy": OOPAttributeString.descriptions(["en":"Shows the default comment policy to be used on ideas in this idea forum."]),
        "commentPolicy_display": OOPAttributeString.descriptions(["en":""]),
        "ideaSubmissionPolicy": OOPAttributeString.descriptions(["en":"Indicates the policy to be enforced for user submitted ideas in this idea forum."]),
        "ideaSubmissionPolicy_display": OOPAttributeString.descriptions(["en":""]),
        "partialUrl": OOPAttributeUrl.descriptions(["en":"Shows the URL path fragment used to generate a URL for this idea forum."]),
        "summary": OOPAttributeString.descriptions(["en":"Type a description of this idea forum's purpose."]),
        "votesPerIdea": OOPAttributeString.descriptions(["en":"Shows the number of votes a user is allowed for a single idea belonging to this idea forum."]),
        "votesPerUser": OOPAttributeString.descriptions(["en":"Shows the number of votes a user is allowed to use in this idea forum."]),
        "votingPolicy": OOPAttributeString.descriptions(["en":"Indicates the voting policy to be used for this idea forum."]),
        "votingPolicy_display": OOPAttributeString.descriptions(["en":""]),
        "votingType": OOPAttributeString.descriptions(["en":"Shows the type of voting that this idea forum allows."]),
        "votingType_display": OOPAttributeString.descriptions(["en":""]),
        "websiteId": OOPAttributeUUID.descriptions(["en":"Shows the website associated with the idea forum."]),
        "websiteLanguageId": OOPAttributeUUID.descriptions(["en":"Option to make idea forums language specific"]),
      ]);
  }
}
mixin(OOPEntityCalls!("PTLIdeaForum"));

version(test_model_portals) {
  unittest {
    assert(PTLIdeaForum);
  
  auto entity = PTLIdeaForum;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}