module models.portals.entities.polls.poll;

@safe:
import models.portals;

// The root entity for portal Ideas.
class DPortalPollEntity : DEntity {
  mixin(EntityThis!("PortalPollEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user. "]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // 
        PollIdAttribute, // Shows the entity instance."]),
        StateCodeAttribute, // Status of the Poll
        StatusCodeAttribute, // Select the poll's status.
        WebSiteIdAttribute, // Unique identifier for Website associated with Poll."]),
        WebTemplateIdAttribute, // Unique identifier for Web Template associated with Poll."]),
      ])
      .addValues([
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "active": StringAttribute, // 
        "closeVotingDate": DateAttribute, // 
        "expirationDate": DateAttribute, // 
        "question": StringAttribute, // 
        "releaseDate": DateAttribute, // 
        "submitButtonLabel": StringAttribute, // 
      ])
      .registerPath("portal_polls")      
      .routingPath("/portals/polls");       
  }
}
mixin(EntityCalls!("PortalPollEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalPollEntity);
  
  auto entity = PortalPollEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}