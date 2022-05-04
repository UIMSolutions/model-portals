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
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttributeClass, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "webSiteLanguageId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "stateCode": StringAttributeClass, // Status of the Website Language"]),
        "stateCode_display": StringAttributeClass, // 
        "portalLanguageId": UUIDAttributeClass, // lookup to Portal Language - one of the 43 supported Dynamics 365 languages that this website/language instance will use"]),
        "publishingState": StringAttributeClass, // Lookup to Publishing State - publishing state of this website/language instance (draft/published)"]),
        "webSiteId": UUIDAttributeClass, // Lookup to Website"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Reason for the status of the Website Language
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