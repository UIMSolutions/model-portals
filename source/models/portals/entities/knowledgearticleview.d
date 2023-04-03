module models.portals.entities.knowledgearticleview;

@safe:
import models.portals;

// 
class DPortalKnowledgeArticleViewEntity : DEntity {
  mixin(EntityThis!("PortalKnowledgeArticleViewEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fixed values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
      ])
      .addValues([ // individual values
        "knowledgeArticleViewsId": StringAttribute, //	Unique identifier of the Knowledge Article Views	
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	
        "transactionCurrencyId": StringAttribute, //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate": StringAttribute, //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "versionNumber": StringAttribute, //		
        "knowledgeArticleView": StringAttribute, //	Number of Knowledge Article Views visited per day	
        "viewDate": StringAttribute, //	Information about the Day	
        "knowledgearticleId": StringAttribute, //	Choose the Knowledge Article.	
        "createdBy": StringAttribute, //	Shows who created the record.	
        "createdOn": StringAttribute, //	Date and time when the record was created.	
        "createdOnBehalfBy": StringAttribute, //	Unique identifier of the delegate user who created the record.	
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	
        "modifiedOn": StringAttribute, //	Shows the date and time when the record was last updated. The date and time are displayed in the time zone selected in Microsoft Dynamics 365 options.	
        "modifiedOnBehalfBy": StringAttribute, //	Unique identifier of the delegate user who modified the record.	
        "ownerId": StringAttribute, //	Owner Id	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "owningBusinessUnit": StringAttribute, //	Unique identifier of the business unit that owns the knowledge article views.	
        "owningUser": StringAttribute, //	Unique identifier of the user who owns the knowledge article views.	
        "stateCode": StringAttribute, //	Status of the Knowledge Article Views	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Knowledge Article Views	
        "statusCode_display": StringAttribute, //		
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	
        "location": StringAttribute, //	Shows where the knowledge was used	
        "location_display": StringAttribute, //		
        "domainName": StringAttribute, //	Domain name of the portal that is tracking knowledge article referrers.	
        "referrer": StringAttribute, //	Types of knowledge article referrers that will be tracked for a portal.	
        "referrer_display": StringAttribute, //		
      ])
      .registerPath("portal_knowledgearticleviews")      
      .routingPath("/portals/knowledgearticleviews");
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
mixin(EntityCalls!("PortalKnowledgeArticleViewEntity"));