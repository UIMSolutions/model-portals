module models.portals.entities.web.template_;

@safe:
import models.portals;

// 
class DPTLWebTemplate : DOOPEntity {
  mixin(OOPEntityThis!("PTLWebTemplate"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Shows the organization."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Web Template"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the web template's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Shows the sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Shows the date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Shows the time zone code that was in use when the record was created."]),
        "MIMEType": OOPStringAttribute.descriptions(["en":"Shows the MIME type of the web template content."]),
        "source": OOPStringAttribute.descriptions(["en":""]),
        "webSiteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Website associated with Web Template"]),
      ])
      .registerPath("portal_webtemplates");   
  }
}
mixin(OOPEntityCalls!("PTLWebTemplate"));

version(test_model_portals) {
  unittest {
    assert(PTLWebTemplate);
  
  auto entity = PTLWebTemplate;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}