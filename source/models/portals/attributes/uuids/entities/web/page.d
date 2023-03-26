module models.portals.attributes.uuids.entities.web.page;

@safe:
import models.portals;

class DWebPageIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebPageIdAttribute"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .name("webPageId")
      .registerPath("portals_uuids.entities.web.pages");
  }  
}
mixin(AttributeCalls!("WebPageIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebPageIdAttribute);
    testAttribute(WebPageIdAttribute);
  }
}