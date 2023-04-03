module models.portals.entities.web.sites.language;

@safe:
import models.portals;

// Languages supported and publishing status for the portal
class DPortalWebSiteLanguageEntity : DEntity {
  mixin(EntityThis!("PortalWebSiteLanguageEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Website Language"]),
        StatusCodeAttribute, // Reason for the status of the Website Language
        WebSiteIdAttribute, // Lookup to Website"]),
        WebSiteLanguageIdAttribute, // Unique identifier for entity instances"]),
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
        "portalLanguageId": UUIDAttribute, // lookup to Portal Language - one of the 43 supported Dynamics 365 languages that this website/language instance will use"]),
        "publishingState": StringAttribute, // Lookup to Publishing State - publishing state of this website/language instance (draft/published)"]),
      ])
      .registerPath("portal_web.sites.languages")      
      .routingPath("/portals/websitelanguages");       
  }

/*   auto webSiteLanguage() {  
    if ("webSiteLanguageId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PortalWebSiteLanguageEntity.entityClasses].findOne(["id": this.attributes["webSiteLanguageId"].toString]);
    return null;
  }
  
  auto webSite() {  
    if ("webSiteId" in this.attributes) 
        if (collection && collection.tenant) 
          return collection.tenant[PortalWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null;
  } */
}
mixin(EntityCalls!("PortalWebSiteLanguageEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalWebSiteLanguageEntity);
  
  auto entity = PortalWebSiteLanguageEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}