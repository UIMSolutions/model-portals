module models.portals.attributes.uuids.entities.polls.poll;

@safe:
import models.portals;

class DPollIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PollIdAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("pollId")
      .registerPath("pollId");
  }  
}
mixin(AttributeCalls!("PollIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DPollIdAttribute);
    testAttribute(PollIdAttribute);
  }
}