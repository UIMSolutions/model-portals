module models.portals.attributes.uuids.entities.posts.first;

@safe:
import models.portals;

class DFirstPostIdAttribute : DPostIdAttribute {
  mixin(AttributeThis!("FirstPostIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("firstPostId")
      .registerPath("firstPostId");
  }  
}
mixin(AttributeCalls!("FirstPostIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DFirstPostIdAttribute);
    testAttribute(FirstPostIdAttribute);
  }
}