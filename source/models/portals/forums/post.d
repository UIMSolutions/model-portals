module models.portals.forums.post;

@safe:
import uim.entities;

// 
class DPTLForumPost : DOOPEntity {
  this() { super();
    this.attributes([
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
      "communityForumPostId": OOPAttributeUUID.descriptions(["en":"Shows the entity instances."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Forum Post"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Select the forum post's status."]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "authorId": OOPAttributeUUID.descriptions(["en":"Shows the contact associated with the forum post."]),
      "content": OOPAttributeString.descriptions(["en":""]),
      "date": OOPAttributeString.descriptions(["en":""]),
      "forumThreadId": OOPAttributeUUID.descriptions(["en":"Shows the Forum Thread associated with the forum post."]),
      "helpfulVoteCount": OOPAttributeString.descriptions(["en":""]),
      "isAnswer": OOPAttributeBoolean.descriptions(["en":""]),
      "publishingStateId": OOPAttributeUUID.descriptions(["en":"Shows the Publishing State associated with the forum post."]),
      "regardingId": OOPAttributeUUID.descriptions(["en":"Shows the forum post associated with the forum post."]),
    ]);
  }

  override string entityClass() { return "aplForumPost"; }
  override string entityClasses() { return "aplForumPosts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto PTLForumPost() { return new DPTLForumPost; } 
auto PTLForumPost(Json json) { return new DPTLForumPost(json); } 

unittest {
  version(uim_entities) {
    assert(PTLForumPost);
  
  auto entity = PTLForumPost;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}