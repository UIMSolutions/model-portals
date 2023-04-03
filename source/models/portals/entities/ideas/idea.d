module models.portals.entities.ideas.idea;

@safe:
import models.portals;

// An idea belonging to a portal Idea Forum.
class DPortalIdeaEntity : DEntity {
  mixin(EntityThis!("PortalIdeaEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user. 
        OwnerIdAttribute, // Owner Id 
        StatusCodeAttribute, // Select the idea's status.
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
        "ideaId": UUIDAttribute, // Shows the entity instances. 
        "stateCode": StringAttribute, // Shows whether the idea is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated. 
        "stateCode_display": StringAttribute, //  
        "approved": StringAttribute, // Indicates whether or not this idea is approved for display. 
        "authorEmail": StringAttribute, // Shows the email address for the author of this idea. 
        "authorId": UUIDAttribute, // The author of the idea. 
        "authorName": StringAttribute, // Shows the name for the author of this idea. 
        "commentPolicy": StringAttribute, // Indicates the comment policy to be used for this idea. 
        "commentPolicy_display": StringAttribute, //  
        "copy": StringAttribute, // Type a description of the idea. 
        "adxCreatedByIPAddress": StringAttribute, // Shows the IP address of the user when they submitted this idea. 
        "adxCreatedByUsername": StringAttribute, // Shows the system username of the user when they submitted this idea. 
        "submittedOn": TimestampAttribute, // Shows the date and time this idea was submitted. 
        "ideaForumId": UUIDAttribute, // The parent idea forum that this idea belongs to. 
        "partialUrl": UrlAttribute, // Shows the URL path fragment used to generate a URL for this idea. 
        "statusAuthorId": UUIDAttribute, // The author of the idea's status. 
        "statusComment": StringAttribute, // Type a comment for the status of the idea. 
        "summary": StringAttribute, // Type an abstract of this idea. 
        "votersTotalNumberOf": StringAttribute, // Shows the total number of voters for this idea. 
        "votesDown": StringAttribute, // Shows the number of down votes this idea has received. 
        "votesTotalNumberOf": StringAttribute, // Shows the total number of votes for this idea. 
        "voteSum": StringAttribute, // Shows the calculated number of up votes minus down votes. 
        "votesUp": StringAttribute, // Shows the number of up votes this idea has received. 
        "totalVotes": StringAttribute, // Shows the total votes casted on the idea. 
        "totalVotesDate": DateAttribute, // Last Updated time of rollup field Total Votes. 
        "totalVotesState": StringAttribute, // State of rollup field Total Votes. 
        "votesSum": StringAttribute, // Shows the sum of all votes casted on the idea. 
        "votesSumDate": DateAttribute, // Last Updated time of rollup field Vote Sum. 
        "votesSumState": StringAttribute, // State of rollup field Vote Sum. 
      ])
      .registerPath("portal_ideas")      
      .routingPath("/portals/ideas");       
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