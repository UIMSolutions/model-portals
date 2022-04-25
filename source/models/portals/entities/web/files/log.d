module models.portals.entities.web.files.log;

@safe:
import models.portals;

// A record of the download of a web file
class DPortalWebFileLogEntity : DOOPEntity {
  mixin(EntityThis!("PortalWebFileLogEntity"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Web File Log"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the web file log's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Unique identifier of the Contact associated with the Web File Log"]),
        "date": OOPStringAttribute.descriptions(["en":"Shows the date and time that the request was made to download the file."]),
        "IpAddress": OOPStringAttribute.descriptions(["en":"Shows the IP address of the computer of the user who requested the file download."]),
        "webFileId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the Web File associated with the Web File Log"]),
      ])
      .registerPath("portal_webfilelogs");
  }
}
mixin(EntityCalls!("PortalWebFileLogEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalWebFileLogEntity);
  
  auto entity = PortalWebFileLogEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}