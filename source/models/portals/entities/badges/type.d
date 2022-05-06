module models.portals.entities.badges.type;

@safe:
import models.portals;

// 
class DPortalBadgeType : DOOPEntity {
  mixin(EntityThis!("PortalBadgeType"));

  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        StateCodeAttribute, //  Status of the Badge Type
        StatusCodeAttribute, // Shows the reason for the status of the badge type.
      ])
      .addValues([ // individual values
        "createdOnBehalfBy": UUIDAttribute, // Shows who created the record on behalf of another user.
        "modifiedOnBehalfBy": UUIDAttribute, // Shows who updated the record on behalf of another user.
        "organizationId": UUIDAttribute, // Shows the organization.
        "importSequenceNumber": NumberAttribute, //Shows the sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Shows the date and time when the record was migrated. The date and time are displayed in the time zone selected in the solution options.
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Shows the time zone code that was in use when the record was created.
        "backgroundColor": StringAttribute, // Enter a hex value or RGB or RGBAex: #FFFFFFrgb(255,255,255)rgba(255,255,255,0.5)
        "displayText": StringAttribute, // Actual shown label for the badge
        "iconName": StringAttribute, // Add font awesome name such as fa-user
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