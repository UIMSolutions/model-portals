module models.portals.attributes.uuids.entities.polls.submission;

@safe:
import models.portals;

class DPollSubmissionIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("PollSubmissionIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("pollSubmissionId")
      .registerPath("pollSubmissionId");
  }  
}
mixin(AttributeCalls!("PollSubmissionIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DPollSubmissionIdAttribute);
    testAttribute(PollSubmissionIdAttribute);
  }
}