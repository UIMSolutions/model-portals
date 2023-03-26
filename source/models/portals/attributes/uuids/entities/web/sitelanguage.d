module models.portals.attributes.uuids.entities.web.sitelanguage;

@safe:
import models.portals;

class DWebSiteLanguageIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebSiteLanguageIdAttribute"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .name("webSiteLanguageId")
      .registerPath("portals_uuids.entities.web.sitelanguages");
  }  
}
mixin(AttributeCalls!("WebSiteLanguageIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebSiteLanguageIdAttribute);
    testAttribute(WebSiteLanguageIdAttribute);
  }
}