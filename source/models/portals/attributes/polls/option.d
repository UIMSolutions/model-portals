module models.portals.attributes.polls.option;

@safe:
import models.portals;

class DPollOptionIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PollOptionIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("pollOptionId")
      .registerPath("pollOptionId");
  }  
}
mixin(AttributeCalls!("PollOptionIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DPollOptionIdAttribute);
    testAttribute(PollOptionIdAttribute);
  }
}