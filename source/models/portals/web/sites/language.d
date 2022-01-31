module models.portals.web.sites.language;

@safe:
import uim.entities;

// Languages supported and publishing status for the portal
  class DPTLWebSiteLanguage : DOOPEntity {
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
      "webSiteLanguageId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Website Language"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Website Language"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "portalLanguageId": OOPAttributeUUID.descriptions(["en":"lookup to Portal Language - one of the 43 supported Dynamics 365 languages that this website/language instance will use"]),
      "publishingState": OOPAttributeString.descriptions(["en":"Lookup to Publishing State - publishing state of this website/language instance (draft/published)"]),
      "webSiteId": OOPAttributeUUID.descriptions(["en":"Lookup to Website"]),
    ]);
  }

  auto webSiteLanguage() {  
    if ("webSiteLanguageId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PTLWebSiteLanguage.entityClasses].findOne(["id": this.attributes["webSiteLanguageId"].toString]);
    return null;
  }
  
  auto webSite() {  
    if ("webSiteId" in this.attributes) 
        if (collection && collection.tenant) 
          return collection.tenant[PTLWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null;
  }

  override string entityClass() { return "aplWebSiteLanguage"; }
  override string entityClasses() { return "aplWebSiteLanguages"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto PTLWebSiteLanguage() { return new DPTLWebSiteLanguage; } 
auto PTLWebSiteLanguage(Json json) { return new DPTLWebSiteLanguage(json); } 

version(test_model_portals) {
  unittest {
    assert(PTLWebSiteLanguage);
  
  auto entity = PTLWebSiteLanguage;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}