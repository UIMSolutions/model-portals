module models.portals.attributes.uuids.entityids.ads.ad;

@safe:
import models.portals;

class DAdIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("AdIdAttribute"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .name("adId")
      .registerPath("portals_ad.ids");
  }  
}
mixin(AttributeCalls!("AdIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DAdIdAttribute);
    testAttribute(AdIdAttribute);
  }
}