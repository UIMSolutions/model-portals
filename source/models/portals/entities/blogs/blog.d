module models.portals.entities.blogs.blog;

@safe:
import models.portals;

// The root entity for a portal blog.
class DPortalBlogEntity : DEntity {
  mixin(EntityThis!("PortalBlogEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Shows whether the blog is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute, // Select the blog's status.
        WebSiteIdAttribute
      ])
      .addValues([
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "blogId": UUIDAttribute, // Shows the entity instances.
        "archiveTemplateId": UUIDAttribute, // Shows the page template to be used to render the archive page (for example, posts by date, tags, and so on) of the blog.
        "homeTemplateId": UUIDAttribute, // Shows the page template to be used to render the home/main page of the Blog.
        "postTemplateId": UUIDAttribute, // Shows the page template to be used to render an individual Blog Post belonging to the Blog.
        "commentPolicy": StringAttribute, // Specifies the post comment policy to be used by this Blog.
        "commentPolicy_display": StringAttribute, // 
        "displayOrder": StringAttribute, // 
        "parentPageId": UUIDAttribute, // Shows the parent webpage associated with this blog, denoting its place in the website site map.
        "partialUrl": UrlAttribute, // Shows the URL path fragment to be used to build a URL for this blog.
        "summary": StringAttribute, // A descriptive summary of the Blog.
        "blogPostLanguageId": UUIDAttribute, // Option to make blog posts language specific
      ])
      .registerPath("portal_blogs")      
      .routingPath("/portals/blogs");    
  }
   
/*   // Get website associated with the blog.,
  auto webSite() {  
    if ("webSiteId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PortalWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; } */
}
mixin(EntityCalls!("PortalBlogEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalBlogEntity);
  
    auto entity = PortalBlogEntity;
  }
}