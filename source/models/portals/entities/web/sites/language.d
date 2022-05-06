module models.portals.entities.web.sites.language;

@safe:
import models.portals;

// Languages supported and publishing status for the portal
class DPortalWebSiteLanguageEntity : DOOPEntity {
  mixin(EntityThis!("PortalWebSiteLanguageEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "webSiteLanguageId": UUIDAttribute, // Unique identifier for entity instances"]),
        "stateCode": StringAttribute, // Status of the Website Language"]),
        "stateCode_display": StringAttribute, // 
        "portalLanguageId": UUIDAttribute, // lookup to Portal Language - one of the 43 supported Dynamics 365 languages that this website/language instance will use"]),
        "publishingState": StringAttribute, // Lookup to Publishing State - publishing state of this website/language instance (draft/published)"]),
        "webSiteId": UUIDAttribute, // Lookup to Website"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttribute, // Reason for the status of the Website Language
      ])
      .registerPath("portal_websitelanguages");   
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