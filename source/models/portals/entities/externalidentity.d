module models.portals.entities.externalidentity;

@safe:
import models.portals;

// ExternalIdentity that is attached to one or more objects, including other notes.
class DPortalExternalIdentityEntity : DEntity {
  mixin(EntityThis!("PortalExternalIdentityEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        ContactIdAttribute, // en":"Unique identifier for Contact associated with External Identity.
        CreatedOnBehalfByAttribute, // Shows the delegate user who created the record.
        ModifiedOnBehalfByAttribute, // Shows the delegate user who modified the record.
        StateCodeAttribute, // Shows whether the external identity is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute, // Select the external identity's status.
      ])
      .addValues([ // individual values
        "organizationId": UUIDAttribute, // Shows the organization.
        "importSequenceNumber": NumberAttribute, //Shows the sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Shows the date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Shows the time zone code that was in use when the record was created.
        "userName": StringAttribute, // Shows the name of the custom entity.
        "identityProviderName": StringAttribute, // 
      ])
      .registerPath("portal_externalidentities")      
      .routingPath("/portals/externalidentities");       
  }
}
mixin(EntityCalls!("PortalExternalIdentityEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalExternalIdentityEntity);
  
  auto entity = PortalExternalIdentityEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}