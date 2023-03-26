module models.portals.attributes.uuids.entities.posts.post;

@safe:
import models.portals;

class DPostIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PostIdAttribute"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .name("postId")
      .registerPath("portals_uuids.entities.posts");
  }  
}
mixin(AttributeCalls!("PostIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DPostIdAttribute);
    testAttribute(PostIdAttribute);
  }
}