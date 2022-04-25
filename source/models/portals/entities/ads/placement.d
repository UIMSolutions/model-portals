module models.portals.entities.ads.placement;

@safe:
import models.portals;

// 
class DPortalAdPlacementEntity : DOOPEntity {
  mixin(EntityThis!("PortalAdPlacementEntity"));

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
        "adPlacementId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instance."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the AdPlacement Placement"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the ad placement's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "webSiteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Website associated with AdPlacementPlacement."]),
        "webTemplateId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Web Template associated with AdPlacement."]),
      ])
      .registerPath("portal_adplacements");    
  }
 
/*   auto webSite() {  
    if ("webSiteId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PortalWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO
    }}

  auto webTemplate() {  
    if ("webTemplateId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PortalWebTemplate.entityClasses].findOne(["id": this.attributes["webTemplateId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO
    }} */

}
mixin(EntityCalls!("PortalAdPlacementEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalAdPlacementEntity);
  
  auto entity = PortalAdPlacementEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}
