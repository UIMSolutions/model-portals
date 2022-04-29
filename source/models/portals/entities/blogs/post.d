module models.portals.entities.blogs.post;

@safe:
import models.portals;

// A post belonging to a portal blog.
class DPortalBlogPostEntity : DOOPEntity {
  mixin(EntityThis!("PortalBlogPostEntity"));

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
        "blogPostId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the blog post is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "authorId": OOPUUIDAttribute.descriptions(["en":"Shows the author of the blog post."]),
        "blogId": OOPUUIDAttribute.descriptions(["en":"The Blog to which the Blog Post belongs."]),
        "commentPolicy": OOPStringAttribute.descriptions(["en":"Specifies the comment policy to be used by this Blog Post."]),
        "commentPolicy_display": OOPStringAttribute.descriptions(["en":""]),
        "copy": OOPStringAttribute.descriptions(["en":"Shows the content of the blog post."]),
        "partialUrl": OOPUrlAttribute.descriptions(["en":"Shows the URL path fragment to be used to build a URL for this blog post."]),
        "published": OOPStringAttribute.descriptions(["en":"Specifies whether the Blog Post is published, or a draft."]),
        "summary": OOPStringAttribute.descriptions(["en":"A descriptive summary of the Blog Post."]),
      ])
      .addValues([
        "adxCreatedByIPAddress": StringAttributeClass, // 
        "adxCreatedByUsername": StringAttributeClass, // 
        "date": StringAttributeClass, // Shows the published date of the blog post, to be displayed to users.
        "enableRatings": StringAttributeClass, // 
        "adxModifiedByIPAddress": StringAttributeClass, // 
        "adxModifiedByUsername": StringAttributeClass, // 
        "statusCode": StatusCodeAttributeClass, // Select the blog post's status.
      ])
      .registerPath("portal_blogposts");    
  }
}
mixin(EntityCalls!("PortalBlogPostEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalBlogPostEntity);
  
  auto entity = PortalBlogPostEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}