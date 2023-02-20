module models.portals.attributes.uuids.entities.web.role;

@safe:
import models.portals;

class DWebRoleIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebRoleIdAttribute"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .name("webRoleId")
      .registerPath("webRoleId");
  }  
}
mixin(AttributeCalls!("WebRoleIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebRoleIdAttribute);
    testAttribute(WebRoleIdAttribute);
  }
}