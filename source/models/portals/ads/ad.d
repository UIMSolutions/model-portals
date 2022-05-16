module models.portals.attributes.ads.ad;

@safe:
import models.portals;

class DAdIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("AdIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("adId")
      .registerPath("adId");
  }  
}
mixin(AttributeCalls!("AdIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DAdIdAttribute);
    testAttribute(AdIdAttribute);
  }
}