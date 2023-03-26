module models.portals.attributes.uuids.entities.posts.first;

@safe:
import models.portals;

class DFirstPostIdAttribute : DPostIdAttribute {
  mixin(AttributeThis!("FirstPostIdAttribute"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .name("firstPostId")
      .registerPath("portals_uuids.entities.posts.firsts");
  }  
}
mixin(AttributeCalls!("FirstPostIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DFirstPostIdAttribute);
    testAttribute(FirstPostIdAttribute);
  }
}