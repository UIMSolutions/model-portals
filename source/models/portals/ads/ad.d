module models.portals.attributes.uuids.entityids.ads.ad;

@safe:
import models.portals;

class DAdIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("AdIdAttribute"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .name("adId")
      .registerPath("adId");
  }  
}
mixin(AttributeCalls!("AdIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DAdIdAttribute);
    testAttribute(AdIdAttribute);
  }
}