module models.portals.entities.ads.placement;

@safe:
import models.portals;

// 
class DPortalAdPlacementEntity : DOOPEntity {
  mixin(EntityThis!("PortalAdPlacementEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttributeClass, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "adPlacementId": UUIDAttributeClass, // Shows the entity instance."]),
        "webSiteId": UUIDAttributeClass, // Unique identifier for Website associated with AdPlacementPlacement."]),
        "webTemplateId": UUIDAttributeClass, // Unique identifier for Web Template associated with AdPlacement."]),
      ])
      .addValues([
        OwnerIdAttributeClass, // Status of the AdPlacement Placement
        StateCodeAttributeClass, // Status of the AdPlacement Placement
        StatusCodeAttributeClass, // Select the ad placement's status.
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
