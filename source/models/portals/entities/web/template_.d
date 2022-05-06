module models.portals.entities.web.template_;

@safe:
import models.portals;

// 
class DPortalWebTemplateEntity : DOOPEntity {
  mixin(EntityThis!("PortalWebTemplateEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        StateCodeAttribute, // Status of the Web Template
        StatusCodeAttribute, // Select the web template's status.
      ])
      .addValues([ // individual values
        "createdOnBehalfBy": UUIDAttribute, // Shows who created the record on behalf of another user.
        "modifiedOnBehalfBy": UUIDAttribute, // Shows who last updated the record on behalf of another user.
        "organizationId": UUIDAttribute, // Shows the organization.
        "importSequenceNumber": NumberAttribute, //Shows the sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Shows the date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Shows the time zone code that was in use when the record was created.
        "MIMEType": StringAttribute, // Shows the MIME type of the web template content.
        "source": StringAttribute, // 
        "webSiteId": UUIDAttribute, // Unique identifier for Website associated with Web Template
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