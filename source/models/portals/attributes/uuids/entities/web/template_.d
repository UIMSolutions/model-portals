module models.portals.attributes.uuids.entities.web.template_;

@safe:
import models.portals;

class DWebTemplateIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebTemplateIdAttribute"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .name("webTemplateId")
      .registerPath("portals_uuids.entities.web.templates");
  }  
}
mixin(AttributeCalls!("WebTemplateIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebTemplateIdAttribute);
    testAttribute(WebTemplateIdAttribute);
  }
}