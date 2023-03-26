module models.portals.attributes.uuids.entities.web.file;

@safe:
import models.portals;

class DWebFileIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebFileIdAttribute"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .name("webFileId")
      .registerPath("portals_uuids.entities.web.files");
  }  
}
mixin(AttributeCalls!("WebFileIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebFileIdAttribute);
    testAttribute(WebFileIdAttribute);
  }
}