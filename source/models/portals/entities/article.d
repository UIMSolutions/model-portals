module models.portals.entities.article;

@safe:
import models.portals;

// 
class DPortalArticleEntity : DEntity {
  mixin(EntityThis!("PortalArticleEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fixed values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
      ])
      .addValues([ // individual values
        "kbArticleId": StringAttribute, // 	Shows the ID of the article.	
        "kbArticleTemplateId": StringAttribute, // 	Choose the template that you want to use as a base for creating the new article.	
        "organizationId": StringAttribute, // 	Unique identifier of the organization associated with the article.	
        "subjectId": StringAttribute, // 	Choose the subject of the article to assist with article searches. You can configure subjects under Business Management in the Settings area.	
        "articleXml": StringAttribute, // 	Shows the article content and formatting, stored as XML.	
        "title": StringAttribute, // 	Type a subject or descriptive name for the article to assist with article searches.	
        "number": StringAttribute, // 	Knowledge base article number.	
        "content": StringAttribute, // 	Description of the content of the knowledge base article.	
        "description": StringAttribute, // 	Type additional information that describes the knowledge base article.	
        "comments": StringAttribute, // 	Comments regarding the knowledge base article.	
        "createdOn": StringAttribute, // 	Date and time when the knowledge base article was created.	
        "createdBy": StringAttribute, // 	Unique identifier of the user who created the knowledge base article.	
        "modifiedBy": StringAttribute, // 	Unique identifier of the user who last modified the knowledge base article.	
        "modifiedOn": StringAttribute, // 	Date and time when the knowledge base article was last modified.	
        "stateCode": StringAttribute, // 	Shows whether the knowledge base article is in draft, unapproved, or published status. Published articles are read-only and can't be edited unless they are unpublished.	
        "stateCode_display": StringAttribute, // 		
        "statusCode": StringAttribute, // 	Select the article's status.	
        "statusCode_display": StringAttribute, // 		
        "versionNumber": StringAttribute, // 	Title of the knowledge base article.	
        "keyWords": StringAttribute, // 	Keywords to be used for searches in knowledge base articles.	
        "importSequenceNumber": StringAttribute, // 	Unique identifier of the data import or data migration that created this record.	
        "overriddenCreatedOn": StringAttribute, // 	Date and time that the record was migrated.	
        "languageCode": StringAttribute, // 	Select which language the article must be available in. This list is based on the list of language packs that are installed in your Microsoft Dynamics 365 environment.	
        "exchangeRate": StringAttribute, // 	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "transactionCurrencyId": StringAttribute, // 	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "entityImageId": StringAttribute, // 	For internal use only.	
        "publishToWeb": StringAttribute, // 	If set to Yes, the article will be visible and searchable on portals connected to this organization.	
        "averageRating": StringAttribute, // 	The average rating of this article.	
        "averageRatingWholeNumber": StringAttribute, // 	The average rating of this article, rounded to a whole number (positive integer).	
        "downvotes": StringAttribute, // 	The number of negative vote ratings applied to this article.	
        "ratingCount": StringAttribute, // 		
        "ratingSum": StringAttribute, // 	The sum of the values of all ratings applied to this article.	
        "upvotes": StringAttribute, // 	The number of positive vote ratings applied to this article.	
      ])
      .registerPath("portal_articles")      
      .routingPath("/portals/articles");
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
mixin(EntityCalls!("PortalArticleEntity"));