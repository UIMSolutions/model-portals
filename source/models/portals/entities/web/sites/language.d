module models.portals.entities.web.sites.language;

@safe:
import models.portals;

// Languages supported and publishing status for the portal
class DPTLWebSiteLanguage : DOOPEntity {
  mixin(OOPEntityThis!("PTLWebSiteLanguage"));

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
        "webSiteLanguageId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Website Language"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the Website Language"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "portalLanguageId": OOPUUIDAttribute.descriptions(["en":"lookup to Portal Language - one of the 43 supported Dynamics 365 languages that this website/language instance will use"]),
        "publishingState": OOPStringAttribute.descriptions(["en":"Lookup to Publishing State - publishing state of this website/language instance (draft/published)"]),
        "webSiteId": OOPUUIDAttribute.descriptions(["en":"Lookup to Website"]),
      ])
      .registerPath("portal_websitelanguages");   
  }

/*   auto webSiteLanguage() {  
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
  } */
}
mixin(OOPEntityCalls!("PTLWebSiteLanguage"));

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