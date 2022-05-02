module models.portals.entities.ideas.idea;

@safe:
import models.portals;

// An idea belonging to a portal Idea Forum.
class DPortalIdeaEntity : DOOPEntity {
  mixin(EntityThis!("PortalIdeaEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user."]),
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
        "ideaId": UUIDAttributeClass, // Shows the entity instances."]), 
        "stateCode": StringAttributeClass, // Shows whether the idea is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]), 
        "stateCode_display": StringAttributeClass, // "]), 
        "approved": StringAttributeClass, // Indicates whether or not this idea is approved for display."]), 
        "authorEmail": StringAttributeClass, // Shows the email address for the author of this idea."]), 
        "authorId": UUIDAttributeClass, // The author of the idea."]), 
        "authorName": StringAttributeClass, // Shows the name for the author of this idea."]), 
        "commentPolicy": StringAttributeClass, // Indicates the comment policy to be used for this idea."]), 
        "commentPolicy_display": StringAttributeClass, // "]), 
        "copy": StringAttributeClass, // Type a description of the idea."]), 
        "adxCreatedByIPAddress": StringAttributeClass, // Shows the IP address of the user when they submitted this idea."]), 
        "adxCreatedByUsername": StringAttributeClass, // Shows the system username of the user when they submitted this idea."]), 
        "submittedOn": OOPTimestampAttribute.descriptions(["en":"Shows the date and time this idea was submitted."]), 
        "ideaForumId": UUIDAttributeClass, // The parent idea forum that this idea belongs to."]), 
        "partialUrl": OOPUrlAttribute.descriptions(["en":"Shows the URL path fragment used to generate a URL for this idea."]), 
        "statusAuthorId": UUIDAttributeClass, // The author of the idea's status."]), 
        "statusComment": StringAttributeClass, // Type a comment for the status of the idea."]), 
        "summary": StringAttributeClass, // Type an abstract of this idea."]), 
        "votersTotalNumberOf": StringAttributeClass, // Shows the total number of voters for this idea."]), 
        "votesDown": StringAttributeClass, // Shows the number of down votes this idea has received."]), 
        "votesTotalNumberOf": StringAttributeClass, // Shows the total number of votes for this idea."]), 
        "voteSum": StringAttributeClass, // Shows the calculated number of up votes minus down votes."]), 
        "votesUp": StringAttributeClass, // Shows the number of up votes this idea has received."]), 
        "totalVotes": StringAttributeClass, // Shows the total votes casted on the idea."]), 
        "totalVotesDate": OOPAttributeDate.descriptions(["en":"Last Updated time of rollup field Total Votes."]), 
        "totalVotesState": StringAttributeClass, // State of rollup field Total Votes."]), 
        "votesSum": StringAttributeClass, // Shows the sum of all votes casted on the idea."]), 
        "votesSumDate": OOPAttributeDate.descriptions(["en":"Last Updated time of rollup field Vote Sum."]), 
        "votesSumState": StringAttributeClass, // State of rollup field Vote Sum."]), 
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