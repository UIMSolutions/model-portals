module models.portals.entities.web.template_;

@safe:
import models.portals;

// 
class DPortalWebTemplateEntity : DEntity {
  mixin(EntityThis!("PortalWebTemplateEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        StateCodeAttribute, // Status of the Web Template
        StatusCodeAttribute, // Select the web template's status.
        WebSiteIdAttribute, // Unique identifier for Website associated with Web Template
      ])
      .addValues([ // individual values
        "organizationId": UUIDAttribute, // Shows the organization.
        "importSequenceNumber": NumberAttribute, //Shows the sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Shows the date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Shows the time zone code that was in use when the record was created.
        "MIMEType": StringAttribute, // Shows the MIME type of the web template content.
        "source": StringAttribute, // 
      ])
      .registerPath("portal_web.templates")      
      .routingPath("/portals/webtemplates");       
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