module models.portals.entities.badges.badge;

@safe:
import models.portals;

// 
class DPortalBadgeEntity : DEntity {
  mixin(EntityThis!("PortalBadgeEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who updated the record on behalf of another user.
        OrganizationIdAttribute, // Shows the organization.
        StateCodeAttribute, // Status of the Badge Type
        StatusCodeAttribute, // Shows the reason for the status of the badge type.
      ])
      .addValues([ // individual values
        "importSequenceNumber": NumberAttribute, //Shows the sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Shows the date and time when the record was migrated. The date and time are displayed in the time zone selected in the solution options.
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Shows the time zone code that was in use when the record was created.
        "backgroundColor": StringAttribute, // Enter a hex value or RGB or RGBAex: #FFFFFFrgb(255,255,255)rgba(255,255,255,0.5)
        "displayText": StringAttribute, // Actual shown label for the badge
        "iconName": StringAttribute, // Add font awesome name such as fa-user
      ])
      .registerPath("portal_badges")      
      .routingPath("/portals/badges");
  }
}
mixin(EntityCalls!("PortalBadgeEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalBadgeEntity);
  
  auto entity = PortalBadgeEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}