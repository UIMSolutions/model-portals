module models.portals.attributes.web.template_;

@safe:
import models.portals;

class DWebTemplateIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebTemplateIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("webTemplateId")
      .registerPath("webTemplateId");
  }  
}
mixin(AttributeCalls!("WebTemplateIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DWebTemplateIdAttribute);
    testAttribute(WebTemplateIdAttribute);
  }
}