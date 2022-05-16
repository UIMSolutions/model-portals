module models.portals.attributes.web.site;

@safe:
import models.portals;

class DWebSiteIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebSiteIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("webSiteId")
      .registerPath("webSiteId");
  }  
}
mixin(AttributeCalls!("WebSiteIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DWebSiteIdAttribute);
    testAttribute(WebSiteIdAttribute);
  }
}