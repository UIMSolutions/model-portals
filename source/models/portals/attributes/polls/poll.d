module models.portals.attributes.polls.poll;

@safe:
import models.portals;

class DPollIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PollIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("pollId")
      .registerPath("pollId");
  }  
}
mixin(AttributeCalls!("PollIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DPollIdAttribute);
    testAttribute(PollIdAttribute);
  }
}