module models.portals.entities.external_identity;

@safe:
import models.portals;

// ExternalIdentity that is attached to one or more objects, including other notes.
class DPTLExternalIdentity : DOOPEntity {
  mixin(OOPEntityThis!("PTLExternalIdentity"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows the delegate user who modified the record."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Shows the organization."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the external identity is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the external identity's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Shows the sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Shows the date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Shows the time zone code that was in use when the record was created."]),
        "userName": OOPStringAttribute.descriptions(["en":"Shows the name of the custom entity."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Unique identifier for Contact associated with External Identity."]),
        "identityProviderName": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("portal_externalidentities");   
  }
}
mixin(OOPEntityCalls!("PTLExternalIdentity"));

version(test_model_portals) {
  unittest {
    assert(PTLExternalIdentity);
  
  auto entity = PTLExternalIdentity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}