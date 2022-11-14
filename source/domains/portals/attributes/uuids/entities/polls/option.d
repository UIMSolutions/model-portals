module models.portals.attributes.uuids.entities.polls.option;

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

version(test_model_portals) {
  unittest {
    testAttribute(new DPollOptionIdAttribute);
    testAttribute(PollOptionIdAttribute);
  }
}