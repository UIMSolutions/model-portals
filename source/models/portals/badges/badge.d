module models.portals.badges.badge;

@safe:
import uim.entities;

// 
class DPTLBadge : DOOPEntity {
  mixin(OOPEntityThis!("PTLBadge"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_badge")
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who updated the record on behalf of another user."]),
        "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Shows the organization."]),
        "stateCode": OOPAttributeString.descriptions(["en":"Status of the Badge Type"]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Shows the reason for the status of the badge type."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Shows the sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Shows the date and time when the record was migrated. The date and time are displayed in the time zone selected in the solution options."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Shows the time zone code that was in use when the record was created."]),
        "backgroundColor": OOPAttributeString.descriptions(["en":"Enter a hex value or RGB or RGBAex: #FFFFFFrgb(255,255,255)rgba(255,255,255,0.5)"]),
        "displayText": OOPAttributeString.descriptions(["en":"Actual shown label for the badge"]),
        "iconName": OOPAttributeString.descriptions(["en":"Add font awesome name such as fa-user"]),
      ]);
  }
}
mixin(OOPEntityThis!("PTLBadge"));

version(test_model_portals) {
  unittest {
    assert(PTLBadge);
  
  auto entity = PTLBadge;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}