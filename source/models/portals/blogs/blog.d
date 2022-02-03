module models.portals.blogs.blog;

@safe:
import models.portals;

// The root entity for a portal blog.
class DPTLBlog : DOOPEntity {
  mixin(OOPEntityThis!("PTLBlog"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_blogs")    
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
        "blogId": OOPAttributeUUID.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPAttributeString.descriptions(["en":"Shows whether the blog is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Select the blog's status."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "archiveTemplateId": OOPAttributeUUID.descriptions(["en":"Shows the page template to be used to render the archive page (for example, posts by date, tags, and so on) of the blog."]),
        "homeTemplateId": OOPAttributeUUID.descriptions(["en":"Shows the page template to be used to render the home/main page of the Blog."]),
        "postTemplateId": OOPAttributeUUID.descriptions(["en":"Shows the page template to be used to render an individual Blog Post belonging to the Blog."]),
        "commentPolicy": OOPAttributeString.descriptions(["en":"Specifies the post comment policy to be used by this Blog."]),
        "commentPolicy_display": OOPAttributeString.descriptions(["en":""]),
        "displayOrder": OOPAttributeString.descriptions(["en":""]),
        "parentPageId": OOPAttributeUUID.descriptions(["en":"Shows the parent webpage associated with this blog, denoting its place in the website site map."]),
        "partialUrl": OOPAttributeUrl.descriptions(["en":"Shows the URL path fragment to be used to build a URL for this blog."]),
        "summary": OOPAttributeString.descriptions(["en":"A descriptive summary of the Blog."]),
        "webSiteId": OOPAttributeUUID.descriptions(["en":"Shows the website associated with the blog."]),
        "blogPostLanguageId": OOPAttributeUUID.descriptions(["en":"Option to make blog posts language specific"]),
      ]);
  }

  auto webSite() {  
    if ("webSiteId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PTLWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO
    }}

}
mixin(OOPEntityCalls!("PTLBlog"));

version(test_model_portals) {
  unittest {
    assert(PTLBlog);
  
  auto entity = PTLBlog;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}