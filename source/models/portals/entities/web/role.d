module models.portals.entities.web.role;

@safe:
import models.portals;

// Sets the user's role for the Portal.
class DPortalWebRoleEntity : DOOPEntity {
  mixin(EntityThis!("PortalWebRoleEntity"));

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
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "webRoleId": UUIDAttribute, // Unique identifier for entity instances"]),
        "stateCode": StringAttribute, // Status of the Web Role"]),
        "stateCode_display": StringAttribute, // 
        "authenticatedUsersRole": StringAttribute, // 
        "webSiteId": UUIDAttribute, // Unique identifier for Website associated with Web Role."]),
        "anonymousUsersRole": StringAttribute, // 
        "key": StringAttribute, // An alternate key that is not intended to be localized to allow retrieval of a specific Web Role in workflows or code."]),
      ])
      .addValues([
        "statusCode": StatusCodeAttribute, // Reason for the status of the Web Role
      ])
      .registerPath("portal_webroles");
  } 
/*   auto webSite() {  
    if ("webSiteId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PortalWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO
    }} */

}
mixin(EntityCalls!("PortalWebRoleEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalWebRoleEntity);
  
  auto entity = PortalWebRoleEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}