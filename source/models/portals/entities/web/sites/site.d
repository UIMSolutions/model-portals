module models.portals.entities.web.sites.site;

@safe:
import models.portals;

// Web Portal
class DPortalWebSiteEntity : DEntity {
  mixin(EntityThis!("PortalWebSiteEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Website"]),
        StatusCodeAttribute, // Reason for the status of the Website
        WebSiteIdAttribute, // Unique identifier for entity instances"]),
      ])
      .addValues([
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "defaultLanguage": StringAttribute, // Lookup to Website Language - the current default language of the website"]),
        "footerTemplateId": UUIDAttribute, // Web Template to use as Website footer content."]),
        "headerTemplateId": UUIDAttribute, // Web Template to use as Website header content."]),
        "parentWebSiteId": WebSiteIdAttribute, // Unique identifier for Website associated with Website."]),
        "partialUrl": UrlAttribute, // "]),
        "primaryDomainName": StringAttribute, // Tracks the primary domain name of the Portal"]),
        "websiteLanguage": StringAttribute, // 
      ])
      .registerPath("portal_web.sites")      
      .routingPath("/portals/websites");       
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