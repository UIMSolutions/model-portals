module models.portals.attributes.web.page;

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

version(test_uim_entities) {
  unittest {
    testAttribute(new DWebPageIdAttribute);
    testAttribute(WebPageIdAttribute);
  }
}