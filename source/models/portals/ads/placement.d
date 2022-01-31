module models.portals.ads.placement;

@safe:
import uim.entities;

// 
class DPTLAdPlacement : DOOPEntity {
  mixin(OOPEntityThis!("PTLAdPlacement"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_AdPlacement")    
      .attributes([
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
      "adPlacementId": OOPAttributeUUID.descriptions(["en":"Shows the entity instance."]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the AdPlacement Placement"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Select the ad placement's status."]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "webSiteId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Website associated with AdPlacementPlacement."]),
      "webTemplateId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Web Template associated with AdPlacement."]),
    ]);
  }
 
  auto webSite() {  
    if ("webSiteId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PTLWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO
    }}

  auto webTemplate() {  
    if ("webTemplateId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PTLWebTemplate.entityClasses].findOne(["id": this.attributes["webTemplateId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO
    }}

}
mixin(OOPEntityCalls!("PTLAdPlacement"));

version(test_model_portals) {
  unittest {
    assert(PTLAdPlacement);
  
  auto entity = PTLAdPlacement;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}
