module models.portals.entities.ideas.idea;

@safe:
import models.portals;

// An idea belonging to a portal Idea Forum.
class DPortalIdeaEntity : DOOPEntity {
  mixin(EntityThis!("PortalIdeaEntity"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
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
        "ideaId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instances."]), 
        "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the idea is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]), 
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]), 
        "approved": OOPStringAttribute.descriptions(["en":"Indicates whether or not this idea is approved for display."]), 
        "authorEmail": OOPStringAttribute.descriptions(["en":"Shows the email address for the author of this idea."]), 
        "authorId": OOPUUIDAttribute.descriptions(["en":"The author of the idea."]), 
        "authorName": OOPStringAttribute.descriptions(["en":"Shows the name for the author of this idea."]), 
        "commentPolicy": OOPStringAttribute.descriptions(["en":"Indicates the comment policy to be used for this idea."]), 
        "commentPolicy_display": OOPStringAttribute.descriptions(["en":""]), 
        "copy": OOPStringAttribute.descriptions(["en":"Type a description of the idea."]), 
        "adxCreatedByIPAddress": OOPStringAttribute.descriptions(["en":"Shows the IP address of the user when they submitted this idea."]), 
        "adxCreatedByUsername": OOPStringAttribute.descriptions(["en":"Shows the system username of the user when they submitted this idea."]), 
        "submittedOn": OOPTimestampAttribute.descriptions(["en":"Shows the date and time this idea was submitted."]), 
        "ideaForumId": OOPUUIDAttribute.descriptions(["en":"The parent idea forum that this idea belongs to."]), 
        "partialUrl": OOPUrlAttribute.descriptions(["en":"Shows the URL path fragment used to generate a URL for this idea."]), 
        "statusAuthorId": OOPUUIDAttribute.descriptions(["en":"The author of the idea's status."]), 
        "statusComment": OOPStringAttribute.descriptions(["en":"Type a comment for the status of the idea."]), 
        "summary": OOPStringAttribute.descriptions(["en":"Type an abstract of this idea."]), 
        "votersTotalNumberOf": OOPStringAttribute.descriptions(["en":"Shows the total number of voters for this idea."]), 
        "votesDown": OOPStringAttribute.descriptions(["en":"Shows the number of down votes this idea has received."]), 
        "votesTotalNumberOf": OOPStringAttribute.descriptions(["en":"Shows the total number of votes for this idea."]), 
        "voteSum": OOPStringAttribute.descriptions(["en":"Shows the calculated number of up votes minus down votes."]), 
        "votesUp": OOPStringAttribute.descriptions(["en":"Shows the number of up votes this idea has received."]), 
        "totalVotes": OOPStringAttribute.descriptions(["en":"Shows the total votes casted on the idea."]), 
        "totalVotesDate": OOPAttributeDate.descriptions(["en":"Last Updated time of rollup field Total Votes."]), 
        "totalVotesState": OOPStringAttribute.descriptions(["en":"State of rollup field Total Votes."]), 
        "votesSum": OOPStringAttribute.descriptions(["en":"Shows the sum of all votes casted on the idea."]), 
        "votesSumDate": OOPAttributeDate.descriptions(["en":"Last Updated time of rollup field Vote Sum."]), 
        "votesSumState": OOPStringAttribute.descriptions(["en":"State of rollup field Vote Sum."]), 
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Select the idea's status.
      ])
      .registerPath("portal_ideas");   
  }
}
mixin(EntityCalls!("PortalIdeaEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalIdeaEntity);
  
  auto entity = PortalIdeaEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}