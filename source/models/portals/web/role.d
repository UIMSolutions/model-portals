module models.portals.web.role;

@safe:
import models.portals;

// Sets the user's role for the Portal.
class DPTLWebRole : DOOPEntity {
  mixin(OOPEntityThis!("PTLWebRole"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_webroles")   
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
        "webRoleId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPAttributeString.descriptions(["en":"Status of the Web Role"]),
        "stateCode_display": OOPAttributeString.descriptions(["en":"portals/"]),
        "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Web Role"]),
        "statusCode_display": OOPAttributeString.descriptions(["en":"portals/"]),
        "authenticatedUsersRole": OOPAttributeString.descriptions(["en":"portals/"]),
        "webSiteId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Website associated with Web Role."]),
        "anonymousUsersRole": OOPAttributeString.descriptions(["en":"portals/"]),
        "key": OOPAttributeString.descriptions(["en":"An alternate key that is not intended to be localized to allow retrieval of a specific Web Role in workflows or code."]),
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

}
mixin(OOPEntityCalls!("PTLWebRole"));

version(test_model_portals) {
  unittest {
    assert(PTLWebRole);
  
  auto entity = PTLWebRole;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}