module models.portals.entities.external_identity;

@safe:
import models.portals;

// ExternalIdentity that is attached to one or more objects, including other notes.
class DPortalExternalIdentityEntity : DOOPEntity {
  mixin(EntityThis!("PortalExternalIdentityEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows the delegate user who modified the record."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Shows the organization."]),
        "stateCode": StringAttributeClass, // Shows whether the external identity is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": StringAttributeClass, // "]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Shows the sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Shows the date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Shows the time zone code that was in use when the record was created."]),
        "userName": StringAttributeClass, // Shows the name of the custom entity."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Unique identifier for Contact associated with External Identity."]),
        "identityProviderName": StringAttributeClass, // "]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Select the external identity's status.
      ])
      .registerPath("portal_externalidentities");   
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