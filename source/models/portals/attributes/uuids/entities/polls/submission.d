module models.portals.attributes.uuids.entities.polls.submission;

@safe:
import models.portals;

class DPollSubmissionIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PollSubmissionIdAttribute"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .name("pollSubmissionId")
      .registerPath("portals_uuids.entities.polls.submission");
  }  
}
mixin(AttributeCalls!("PollSubmissionIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DPollSubmissionIdAttribute);
    testAttribute(PollSubmissionIdAttribute);
  }
}