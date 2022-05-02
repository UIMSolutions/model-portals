module models.portals.entities.badges.type;

@safe:
import models.portals;

// 
class DPortalBadgeType : DOOPEntity {
  mixin(EntityThis!("PortalBadgeType"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who updated the record on behalf of another user."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Shows the organization."]),
        "stateCode": StringAttributeClass, // Status of the Badge Type"]),
        "stateCode_display": StringAttributeClass, // "]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Shows the sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Shows the date and time when the record was migrated. The date and time are displayed in the time zone selected in the solution options."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Shows the time zone code that was in use when the record was created."]),
        "backgroundColor": StringAttributeClass, // Enter a hex value or RGB or RGBAex: #FFFFFFrgb(255,255,255)rgba(255,255,255,0.5)"]),
        "displayText": StringAttributeClass, // Actual shown label for the badge"]),
        "iconName": StringAttributeClass, // Add font awesome name such as fa-user"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Shows the reason for the status of the badge type.
      ])
      .registerPath("portal_badgetypes");
  }
}
mixin(EntityCalls!("PortalBadgeType"));

version(test_model_portals) {
  unittest {
    assert(PortalBadgeType);
  
  auto entity = PortalBadgeType;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}