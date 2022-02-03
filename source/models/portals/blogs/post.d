module models.portals.blogs.post;

@safe:
import models.portals;

// A post belonging to a portal blog.
class DPTLBlogPost : DOOPEntity {
  mixin(OOPEntityThis!("PTLBlogPost"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("portal_blogposts")    
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
        "blogPostId": OOPAttributeUUID.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPAttributeString.descriptions(["en":"Shows whether the blog post is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "statusCode": OOPAttributeString.descriptions(["en":"Select the blog post's status."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "authorId": OOPAttributeUUID.descriptions(["en":"Shows the author of the blog post."]),
        "blogId": OOPAttributeUUID.descriptions(["en":"The Blog to which the Blog Post belongs."]),
        "commentPolicy": OOPAttributeString.descriptions(["en":"Specifies the comment policy to be used by this Blog Post."]),
        "commentPolicy_display": OOPAttributeString.descriptions(["en":""]),
        "copy": OOPAttributeString.descriptions(["en":"Shows the content of the blog post."]),
        "adxCreatedByIPAddress": OOPAttributeString.descriptions(["en":""]),
        "adxCreatedByUsername": OOPAttributeString.descriptions(["en":""]),
        "date": OOPAttributeString.descriptions(["en":"Shows the published date of the blog post, to be displayed to users."]),
        "enableRatings": OOPAttributeString.descriptions(["en":""]),
        "adxModifiedByIPAddress": OOPAttributeString.descriptions(["en":""]),
        "adxModifiedByUsername": OOPAttributeString.descriptions(["en":""]),
        "partialUrl": OOPAttributeUrl.descriptions(["en":"Shows the URL path fragment to be used to build a URL for this blog post."]),
        "published": OOPAttributeString.descriptions(["en":"Specifies whether the Blog Post is published, or a draft."]),
        "summary": OOPAttributeString.descriptions(["en":"A descriptive summary of the Blog Post."]),
      ]);
  }
}
mixin(OOPEntityCalls!("PTLBlogPost"));

version(test_model_portals) {
  unittest {
    assert(PTLBlogPost);
  
  auto entity = PTLBlogPost;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}