module models.portals.attributes.uuids.entities.polls.option;

@safe:
import models.portals;

class DPollOptionIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PollOptionIdAttribute"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .name("pollOptionId")
      .registerPath("portals_uuids.entities.polls.options");
  }  
}
mixin(AttributeCalls!("PollOptionIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DPollOptionIdAttribute);
    testAttribute(PollOptionIdAttribute);
  }
}