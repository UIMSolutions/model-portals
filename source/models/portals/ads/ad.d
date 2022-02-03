module models.portals.ads.ad;

@safe:
import models.portals;

// Ad that is attached to one or more objects, including other notes.
class DPTLAd : DOOPEntity {
  mixin(OOPEntityThis!("PTLAd"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_ads")
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "adId": OOPAttributeUUID.descriptions(["en":"Shows the entity instance."]),
        "stateCode": OOPAttributeString.descriptions(["en":"Status of the Ad"]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Select the ad's status."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "copy": OOPAttributeString.descriptions(["en":""]),
        "expirationDate": OOPAttributeDate.descriptions(["en":""]),
        "image": OOPAttributeString.descriptions(["en":"location of image file"]),
        "imageAltText": OOPAttributeString.descriptions(["en":""]),
        "imageHeight": OOPAttributeString.descriptions(["en":""]),
        "imageWidth": OOPAttributeString.descriptions(["en":""]),
        "openInNewWindow": OOPAttributeString.descriptions(["en":""]),
        "publishingStateId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Publishing State associated with Ad."]),
        "redirectWebFile": OOPAttributeString.descriptions(["en":"Unique identifier for Web File associated with Ad."]),
        "releaseDate": OOPAttributeDate.descriptions(["en":""]),
        "title": OOPAttributeString.descriptions(["en":""]),
        "Url": OOPAttributeUrl.descriptions(["en":""]),
        "webFileId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Web File associated with Ad."]),
        "webPageId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Web Page associated with Ad."]),
        "webSiteId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Website associated with Ad."]),
        "webTemplateId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Web Template associated with Ad."]),
      ]);
  }

  auto webFile() {  
    if ("webFileId" in this.attributes) {
      if (collection && collection.tenant) {
        return collection.tenant[PTLWebFile.entityClasses].findOne(["id": this.attributes["webFileId"].toString]);
      }}
    return null; }  
  unittest {
    version(test_model_portals) {
      // TODO
    }}

  auto webPage() {  
    if ("webPageId" in this.attributes) {
      if (collection && collection.tenant) {
        auto tenant = collection.tenant;  
        return collection.tenant[PTLWebPage.entityClasses].findOne(["id": this.attributes["webPageId"].toString]);
      }}
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO
    }}

  auto webSite() {  
    if ("webSiteId" in this.attributes) {
      auto id = this.attributes["webSiteId"].toString;
      if (collection && collection.tenant) {
        return collection.tenant[PTLWebSite.entityClasses].findOne(["id":id]);
      }
    }
    return null;
  }
}
mixin(OOPEntityCalls!("PTLAd"));

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