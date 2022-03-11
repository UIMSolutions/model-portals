module models.portals.classes.entity;

@safe:
import models.portals;

class DPTLEntity : DOOPEntity {
  mixin(OOPEntityThis!("PTLEntity"));

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
        "adId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instance."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Ad"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the ad's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "copy": OOPStringAttribute.descriptions(["en":""]),
        "expirationDate": OOPAttributeDate.descriptions(["en":""]),
        "image": OOPStringAttribute.descriptions(["en":"location of image file"]),
        "imageAltText": OOPStringAttribute.descriptions(["en":""]),
        "imageHeight": OOPStringAttribute.descriptions(["en":""]),
        "imageWidth": OOPStringAttribute.descriptions(["en":""]),
        "openInNewWindow": OOPStringAttribute.descriptions(["en":""]),
        "publishingStateId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Publishing State associated with Ad."]),
        "redirectWebFile": OOPStringAttribute.descriptions(["en":"Unique identifier for Web File associated with Ad."]),
        "releaseDate": OOPAttributeDate.descriptions(["en":""]),
        "title": OOPStringAttribute.descriptions(["en":""]),
        "Url": OOPUrlAttribute.descriptions(["en":""]),
        "webFileId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Web File associated with Ad."]),
        "webPageId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Web Page associated with Ad."]),
        "webSiteId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Website associated with Ad."]),
        "webTemplateId": OOPUUIDAttribute.descriptions(["en":"Unique identifier for Web Template associated with Ad."]),
      ]);
  }
}
mixin(OOPEntityCalls!("PTLEntity"));

version(test_model_portals) {
  unittest {
    assert(PTLAd);
  
  auto entity = PTLAd;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}