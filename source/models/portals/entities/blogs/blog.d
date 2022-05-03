module models.portals.entities.blogs.blog;

@safe:
import models.portals;

// The root entity for a portal blog.
class DPortalBlogEntity : DOOPEntity {
  mixin(EntityThis!("PortalBlogEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttributeClass, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "blogId": UUIDAttributeClass, // Shows the entity instances."]),
        "stateCode": StringAttributeClass, // Shows whether the blog is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": StringAttributeClass, // 
        "archiveTemplateId": UUIDAttributeClass, // Shows the page template to be used to render the archive page (for example, posts by date, tags, and so on) of the blog."]),
        "homeTemplateId": UUIDAttributeClass, // Shows the page template to be used to render the home/main page of the Blog."]),
        "postTemplateId": UUIDAttributeClass, // Shows the page template to be used to render an individual Blog Post belonging to the Blog."]),
        "commentPolicy": StringAttributeClass, // Specifies the post comment policy to be used by this Blog."]),
        "commentPolicy_display": StringAttributeClass, // 
        "displayOrder": StringAttributeClass, // 
        "parentPageId": UUIDAttributeClass, // Shows the parent webpage associated with this blog, denoting its place in the website site map."]),
        "partialUrl": OOPUrlAttribute.descriptions(["en":"Shows the URL path fragment to be used to build a URL for this blog."]),
        "summary": StringAttributeClass, // A descriptive summary of the Blog."]),
        "webSiteId": UUIDAttributeClass, // Shows the website associated with the blog."]),
        "blogPostLanguageId": UUIDAttributeClass, // Option to make blog posts language specific"]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Select the blog's status.
      ])
      .registerPath("portal_blogs");    
  }

/*   auto webSite() {  
    if ("webSiteId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PortalWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO
    }}
 */
}
mixin(EntityCalls!("PortalBlogEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalBlogEntity);
  
  auto entity = PortalBlogEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}