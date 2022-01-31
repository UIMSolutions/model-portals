module models.portals.ideas.idea;

@safe:
import uim.entities;

// An idea belonging to a portal Idea Forum.
class DPTLIdea : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
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
      "ideaId": OOPAttributeUUID.descriptions(["en":"Shows the entity instances."]), 
      "stateCode": OOPAttributeString.descriptions(["en":"Shows whether the idea is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]), 
      "stateCode_display": OOPAttributeString.descriptions(["en":""]), 
      "statusCode": OOPAttributeString.descriptions(["en":"Select the idea's status."]), 
      "statusCode_display": OOPAttributeString.descriptions(["en":""]), 
      "approved": OOPAttributeString.descriptions(["en":"Indicates whether or not this idea is approved for display."]), 
      "authorEmail": OOPAttributeString.descriptions(["en":"Shows the email address for the author of this idea."]), 
      "authorId": OOPAttributeUUID.descriptions(["en":"The author of the idea."]), 
      "authorName": OOPAttributeString.descriptions(["en":"Shows the name for the author of this idea."]), 
      "commentPolicy": OOPAttributeString.descriptions(["en":"Indicates the comment policy to be used for this idea."]), 
      "commentPolicy_display": OOPAttributeString.descriptions(["en":""]), 
      "copy": OOPAttributeString.descriptions(["en":"Type a description of the idea."]), 
      "adxCreatedByIPAddress": OOPAttributeString.descriptions(["en":"Shows the IP address of the user when they submitted this idea."]), 
      "adxCreatedByUsername": OOPAttributeString.descriptions(["en":"Shows the system username of the user when they submitted this idea."]), 
      "submittedOn": OOPAttributeTimestamp.descriptions(["en":"Shows the date and time this idea was submitted."]), 
      "ideaForumId": OOPAttributeUUID.descriptions(["en":"The parent idea forum that this idea belongs to."]), 
      "partialUrl": OOPAttributeUrl.descriptions(["en":"Shows the URL path fragment used to generate a URL for this idea."]), 
      "statusAuthorId": OOPAttributeUUID.descriptions(["en":"The author of the idea's status."]), 
      "statusComment": OOPAttributeString.descriptions(["en":"Type a comment for the status of the idea."]), 
      "summary": OOPAttributeString.descriptions(["en":"Type an abstract of this idea."]), 
      "votersTotalNumberOf": OOPAttributeString.descriptions(["en":"Shows the total number of voters for this idea."]), 
      "votesDown": OOPAttributeString.descriptions(["en":"Shows the number of down votes this idea has received."]), 
      "votesTotalNumberOf": OOPAttributeString.descriptions(["en":"Shows the total number of votes for this idea."]), 
      "voteSum": OOPAttributeString.descriptions(["en":"Shows the calculated number of up votes minus down votes."]), 
      "votesUp": OOPAttributeString.descriptions(["en":"Shows the number of up votes this idea has received."]), 
      "totalVotes": OOPAttributeString.descriptions(["en":"Shows the total votes casted on the idea."]), 
      "totalVotesDate": OOPAttributeDate.descriptions(["en":"Last Updated time of rollup field Total Votes."]), 
      "totalVotesState": OOPAttributeString.descriptions(["en":"State of rollup field Total Votes."]), 
      "votesSum": OOPAttributeString.descriptions(["en":"Shows the sum of all votes casted on the idea."]), 
      "votesSumDate": OOPAttributeDate.descriptions(["en":"Last Updated time of rollup field Vote Sum."]), 
      "votesSumState": OOPAttributeString.descriptions(["en":"State of rollup field Vote Sum."]), 
    ]);
  }

  override string entityClass() { return "aplIdea"; }
  override string entityClasses() { return "aplIdeas"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto PTLIdea() { return new DPTLIdea; } 
auto PTLIdea(Json json) { return new DPTLIdea(json); } 

version(test_model_portals) {
  unittest {
    assert(PTLIdea);
  
  auto entity = PTLIdea;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}