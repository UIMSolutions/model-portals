module models.portals.attributes.uuids.entityids.posts.last;

@safe:
import models.portals;

class DLastPostIdAttribute : DPostIdAttribute {
  mixin(AttributeThis!("LastPostIdAttribute"));

  override void initialize() {
    super.initialize;

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