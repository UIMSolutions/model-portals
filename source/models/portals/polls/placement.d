module models.portals.polls.placement;

@safe:
import uim.entities;

// The root entity for portal Ideas.
class DPTLPollPlacement : DOOPEntity {
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
      "pollPlacementId": OOPAttributeUUID.descriptions(["en":"Shows the entity instance."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Poll Placement"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Select the poll placement's status."]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "websiteId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Website associated with Poll Placement."]),
      "webTemplateId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Web Template associated with Poll Placement."]),
    ]);
  }

  override string entityClass() { return "aplPollPlacement"; }
  override string entityClasses() { return "aplPollPlacements"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto PTLPollPlacement() { return new DPTLPollPlacement; } 
auto PTLPollPlacement(Json json) { return new DPTLPollPlacement(json); } 

unittest {
  version(uim_entities) {
    assert(PTLPollPlacement);
  
  auto entity = PTLPollPlacement;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}