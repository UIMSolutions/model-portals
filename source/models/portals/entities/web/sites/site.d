module models.portals.entities.web.sites.site;

@safe:
import models.portals;

// Web Portal
class DPortalWebSiteEntity : DOOPEntity {
  mixin(EntityThis!("PortalWebSiteEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "webSiteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": StringAttributeClass, // Status of the Website"]),
        "stateCode_display": StringAttributeClass, // "]),
        "defaultLanguage": StringAttributeClass, // Lookup to Website Language - the current default language of the website"]),
        "footerTemplateId": OOPUUIDAttribute.descriptions(["en":"Web Template to use as Website footer content."]),
        "headerTemplateId": OOPUUIDAttribute.descriptions(["en":"Web Template to use as Website header content."]),
        "parentWebSiteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Website associated with Website."]),
        "partialUrl": OOPUrlAttribute.descriptions(["en":""]),
        "primaryDomainName": StringAttributeClass, // Tracks the primary domain name of the Portal"]),
        "websiteLanguage": StringAttributeClass, // "]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Reason for the status of the Website
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
        return collection.tenant[PortalWebSiteEntity.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; } */
}
mixin(EntityCalls!("PortalWebSiteEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalWebSiteEntity);
  
  auto entity = PortalWebSiteEntity;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}