module models.portals.entities.blogs.post;

@safe:
import models.portals;

// A post belonging to a portal blog.
class DPortalBlogPostEntity : DOOPEntity {
  mixin(EntityThis!("PortalBlogPostEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "blogPostId": UUIDAttribute, // Shows the entity instances."]),
        "stateCode": StringAttribute, // Shows whether the blog post is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": StringAttribute, // 
        "authorId": UUIDAttribute, // Shows the author of the blog post."]),
        "blogId": UUIDAttribute, // The Blog to which the Blog Post belongs."]),
        "commentPolicy": StringAttribute, // Specifies the comment policy to be used by this Blog Post."]),
        "commentPolicy_display": StringAttribute, // 
        "copy": StringAttribute, // Shows the content of the blog post."]),
        "partialUrl": UrlAttribute, // Shows the URL path fragment to be used to build a URL for this blog post."]),
        "published": StringAttribute, // Specifies whether the Blog Post is published, or a draft."]),
        "summary": StringAttribute, // A descriptive summary of the Blog Post."]),
      ])
      .addValues([
        "adxCreatedByIPAddress": StringAttribute, // 
        "adxCreatedByUsername": StringAttribute, // 
        "date": StringAttribute, // Shows the published date of the blog post, to be displayed to users.
        "enableRatings": StringAttribute, // 
        "adxModifiedByIPAddress": StringAttribute, // 
        "adxModifiedByUsername": StringAttribute, // 
        "statusCode": StatusCodeAttribute, // Select the blog post's status.
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