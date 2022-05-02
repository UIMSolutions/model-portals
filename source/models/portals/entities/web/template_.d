module models.portals.entities.web.template_;

@safe:
import models.portals;

// 
class DPortalWebTemplateEntity : DOOPEntity {
  mixin(EntityThis!("PortalWebTemplateEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Shows the organization."]),
        "stateCode": StringAttributeClass, // Status of the Web Template"]),
        "stateCode_display": StringAttributeClass, // "]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Shows the sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Shows the date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Shows the time zone code that was in use when the record was created."]),
        "MIMEType": StringAttributeClass, // Shows the MIME type of the web template content."]),
        "source": StringAttributeClass, // "]),
        "webSiteId": UUIDAttributeClass, // Unique identifier for Website associated with Web Template"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Select the web template's status.
      ])
      .registerPath("portal_webtemplates");   
  }
}
mixin(EntityCalls!("PortalWebTemplateEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalWebTemplateEntity);
  
  auto entity = PortalWebTemplateEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}