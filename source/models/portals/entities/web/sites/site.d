module models.portals.entities.web.sites.site;

@safe:
import models.portals;

// Web Portal
class DPortalWebSite : DOOPEntity {
  mixin(OOPEntityThis!("PortalWebSite"));

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
        "webSiteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Website"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Website"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "defaultLanguage": OOPStringAttribute.descriptions(["en":"Lookup to Website Language - the current default language of the website"]),
        "footerTemplateId": OOPUUIDAttribute.descriptions(["en":"Web Template to use as Website footer content."]),
        "headerTemplateId": OOPUUIDAttribute.descriptions(["en":"Web Template to use as Website header content."]),
        "parentWebSiteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Website associated with Website."]),
        "partialUrl": OOPUrlAttribute.descriptions(["en":""]),
        "primaryDomainName": OOPStringAttribute.descriptions(["en":"Tracks the primary domain name of the Portal"]),
        "websiteLanguage": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("portal_websites");   
  }
  
/*   auto parentWebSite() {
    if ("parentWebSiteId" in this.attributes) 
      if (collection && collection.tenant)
        return collection.tenant[this.entityClasses].findOne(["id": this.attributes["parentWebSiteId"].toString]);
    return null; }
  
  auto webSite() {  
    if ("webSiteId" in this.attributes)
      if (collection && collection.tenant)
        return collection.tenant[PortalWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; } */
}
mixin(OOPEntityCalls!("PortalWebSite"));

version(test_model_portals) {
  unittest {
    assert(PortalWebSite);
  
  auto entity = PortalWebSite;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}