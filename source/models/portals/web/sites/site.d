module models.portals.web.sites.site;

@safe:
import uim.entities;

// Web Portal
  class DPTLWebSite : DOOPEntity {
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
      "webSiteId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Website"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Website"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "defaultLanguage": OOPAttributeString.descriptions(["en":"Lookup to Website Language - the current default language of the website"]),
      "footerTemplateId": OOPAttributeUUID.descriptions(["en":"Web Template to use as Website footer content."]),
      "headerTemplateId": OOPAttributeUUID.descriptions(["en":"Web Template to use as Website header content."]),
      "parentWebSiteId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Website associated with Website."]),
      "partialUrl": OOPAttributeUrl.descriptions(["en":""]),
      "primaryDomainName": OOPAttributeString.descriptions(["en":"Tracks the primary domain name of the Portal"]),
      "websiteLanguage": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplWebSite"; }
  override string entityClasses() { return "aplWebSites"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
 
  auto parentWebSite() {
    if ("parentWebSiteId" in this.attributes) 
      if (collection && collection.tenant)
        return collection.tenant[this.entityClasses].findOne(["id": this.attributes["parentWebSiteId"].toString]);
    return null; }
  
  auto webSite() {  
    if ("webSiteId" in this.attributes)
      if (collection && collection.tenant)
        return collection.tenant[PTLWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; }
}
auto PTLWebSite() { return new DPTLWebSite; } 
auto PTLWebSite(Json json) { return new DPTLWebSite(json); } 

version(test_model_portals) {
  unittest {
    assert(PTLWebSite);
  
  auto entity = PTLWebSite;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}