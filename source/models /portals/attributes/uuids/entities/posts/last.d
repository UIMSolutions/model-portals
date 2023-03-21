module models.portals.attributes.uuids.entities.posts.last;

@safe:
import models.portals;

class DLastPostIdAttribute : DPostIdAttribute {
  mixin(AttributeThis!("LastPostIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("lastPostId")
      .registerPath("lastPostId");
  }  
}
mixin(AttributeCalls!("LastPostIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DLastPostIdAttribute);
    testAttribute(LastPostIdAttribute);
  }
}