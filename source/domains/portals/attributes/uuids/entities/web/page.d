module models.portals.attributes.uuids.entities.web.page;

@safe:
import models.portals;

class DWebPageIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebPageIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("webPageId")
      .registerPath("webPageId");
  }  
}
mixin(AttributeCalls!("WebPageIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebPageIdAttribute);
    testAttribute(WebPageIdAttribute);
  }
}