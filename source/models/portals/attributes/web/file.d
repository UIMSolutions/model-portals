module models.portals.attributes.web.file;

@safe:
import models.portals;

class DWebFileIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebFileIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("webFileId")
      .registerPath("webFileId");
  }  
}
mixin(AttributeCalls!("WebFileIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DWebFileIdAttribute);
    testAttribute(WebFileIdAttribute);
  }
}