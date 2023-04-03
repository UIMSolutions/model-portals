module models.portals.entities.language;

@safe:
import models.portals;

// 
class DPortalLanguageEntity : DEntity {
  mixin(EntityThis!("PortalLanguageEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fixed values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
      ])
      .addValues([ // individual values
        "createdOn": StringAttribute, //	Date and time when the record was created.	
        "createdBy": StringAttribute, //	Shows who created the record.	
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "importSequenceNumber": StringAttribute, //	Sequence number of the import that created this record.	
        "ownerId": StringAttribute, //	Owner Id	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	
        "versionNumber": StringAttribute, //	Version Number	
        "portalLanguageId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Portal Language	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Portal Language	
        "statusCode_display": StringAttribute, //		
        "name": StringAttribute, //	The name of the custom entity.	
        "languageCode": StringAttribute, //	Locale or language identifier that appears in the URL to indicate the portal language	
        "systemLanguage": StringAttribute, //	The system language determines which portal languages are available	
        "description": StringAttribute, //		
        "portalDisplayName": StringAttribute, //	Localized display name of the portal language	
        "lcid": StringAttribute, //	Locale ID that is assigned to the portal language	
      ])
      .registerPath("portal_languages")      
      .routingPath("/portals/languages");
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
mixin(EntityCalls!("PortalLanguageEntity"));