module models.portals.attributes.uuids.entities.web.role;

@safe:
import models.portals;

class DWebRoleIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebRoleIdAttribute"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .name("webRoleId")
      .registerPath("portals_uuids.entities.web.roles");
  }  
}
mixin(AttributeCalls!("WebRoleIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebRoleIdAttribute);
    testAttribute(WebRoleIdAttribute);
  }
}