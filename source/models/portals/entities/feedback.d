module models.portals.entities.feedback;

@safe:
import models.portals;

// 
class DPortalFeedbackEntity : DEntity {
  mixin(EntityThis!("PortalFeedbackEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fixed values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
      ])
      .addValues([ // individual values
        "feedbackId": StringAttribute, //	FeedbackId	
        "rating": StringAttribute, //	Specifies how helpful the related record was.	
        "minRating": StringAttribute, //	Enter the minimum rating value.	
        "maxRating": StringAttribute, //	Enter the maximum rating value.	
        "normalizedRating": StringAttribute, //	Shows the rating scaled to a value between 0 and 1 based on minimum and maximum ratings.	
        "comments": StringAttribute, //	Type the feedback comments.	
        "source": StringAttribute, //	Shows where the feedback was submitted from.	
        "source_display": StringAttribute, //		
        "stateCode": StringAttribute, //	Shows whether the feedback is open, rejected or closed.	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Select the feedback's status.	
        "statusCode_display": StringAttribute, //		
        "versionNumber": StringAttribute, //	Version number of the feedback.	
        "regardingObjectId": StringAttribute, //	Shows the record that the feedback is associated with.	
        "createdBy": StringAttribute, //	Shows who created the record.	
        "createdOn": StringAttribute, //	Shows the date and time when the record was created. The date and time are displayed in the time zone selected in Microsoft Dynamics 365 options.	
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	
        "modifiedOn": StringAttribute, //	Shows the date and time when the record was last updated. The date and time are displayed in the time zone selected in Microsoft Dynamics 365 options.	
        "ownerId": StringAttribute, //	Owner Id	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "owningBusinessUnit": StringAttribute, //	Unique identifier of the business unit that owns the knowledge article views.	
        "owningUser": StringAttribute, //	Unique identifier of the user who owns this feedback.	
        "owningTeam": StringAttribute, //	Unique identifier of the team that owns the feedback.	
        "closedBy": StringAttribute, //	Shows who closed the record.	
        "closedOn": StringAttribute, //	Shows the date and time when the record was closed. The date and time are displayed in the time zone selected in Microsoft Dynamics 365 options.	
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "transactionCurrencyId": StringAttribute, //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate": StringAttribute, //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "title": StringAttribute, //	Type a title for the feedback.	
        "createdByContact": StringAttribute, //	Shows the contact who created the record.	
        "createdOnBehalfByContact": StringAttribute, //	Shows the contact who created the record on behalf of another user.	
        "publishedToWeb": StringAttribute, //	Shows whether the feedback is approved for display.	
        "authorURL": StringAttribute, //	The URL of the author’s home page/blog.	
        "adxContactEmail": StringAttribute, //	Email of the contact who created the record.	
        "adxContactUsername": StringAttribute, //	Username of the contact who created the record.	
        "adxCreatedByContact": StringAttribute, //	Name of the contact who created the record.	
      ])
      .registerPath("portal_feedbacks")      
      .routingPath("/s");
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

  auto webTemplate() {  
    if ("webTemplateId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PortalWebTemplate.entityClasses].findOne(["id": this.attributes["webTemplateId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO
    }} */

}
mixin(EntityCalls!("PortalFeedbackEntity"));