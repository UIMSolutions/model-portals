module models.portals.attributes.uuids.entities.web.site;

@safe:
import models.portals;

class DWebSiteIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebSiteIdAttribute"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .name("webSiteId")
      .registerPath("portals_uuids.entities.web.sites");
  }  

  
}
mixin(AttributeCalls!("WebSiteIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebSiteIdAttribute);
    testAttribute(WebSiteIdAttribute);
  }
}