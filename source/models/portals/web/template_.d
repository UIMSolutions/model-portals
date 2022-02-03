module models.portals.web.template_;

@safe:
import models.portals;

// 
class DPTLWebTemplate : DOOPEntity {
  mixin(OOPEntityThis!("PTLForumThread"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_forumthreads")   
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Shows the organization."]),
        "stateCode": OOPAttributeString.descriptions(["en":"Status of the Web Template"]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Select the web template's status."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Shows the sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Shows the date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Shows the time zone code that was in use when the record was created."]),
        "MIMEType": OOPAttributeString.descriptions(["en":"Shows the MIME type of the web template content."]),
        "source": OOPAttributeString.descriptions(["en":""]),
        "webSiteId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Website associated with Web Template"]),
      ]);
  }
}
mixin(OOPEntityCalls!("PTLForumThread"));

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