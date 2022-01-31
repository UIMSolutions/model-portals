module models.portals.forums.forum;

@safe:
import uim.entities;

// 
class DPTLForum : DOOPEntity {
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
      "communityForumId": OOPAttributeUUID.descriptions(["en":"Shows the entity instances."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Forum"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Select the forum's status."]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "displayOrder": OOPAttributeString.descriptions(["en":""]),
      "enableQueuedPosts": OOPAttributeString.descriptions(["en":"Automatically put posts in a queue awaiting a moderator to approve"]),
      "forumPageTemplateID": OOPAttributeString.descriptions(["en":"Shows the Page Template associated with the forum."]),
      "hiddenFromSitemap": OOPAttributeString.descriptions(["en":""]),
      "lastPostID": OOPAttributeString.descriptions(["en":"Shows the forum post associated with the forum."]),
      "parentPageID": OOPAttributeString.descriptions(["en":"Shows the webpage associated with the forum."]),
      "partialUrl": OOPAttributeUrl.descriptions(["en":""]),
      "postCount": OOPAttributeString.descriptions(["en":""]),
      "publishingStateID": OOPAttributeString.descriptions(["en":"Shows the Publishing State associated with the forum."]),
      "threadCount": OOPAttributeString.descriptions(["en":""]),
      "threadPageTemplateID": OOPAttributeString.descriptions(["en":"Shows the Page Template associated with the forum."]),
      "websiteId": OOPAttributeUUID.descriptions(["en":"Shows the Website associated with the forum."]),
      "forumLanguageId": OOPAttributeUUID.descriptions(["en":"Option to make forums and forum posts language specific"]),
    ]);
  }

  override string entityClass() { return "aplForum"; }
  override string entityClasses() { return "aplForums"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto PTLForum() { return new DPTLForum; } 
auto PTLForum(Json json) { return new DPTLForum(json); } 

unittest {
  version(uim_entities) {
    assert(PTLForum);
  
  auto entity = PTLForum;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}