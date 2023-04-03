module models.portals.entities.pagetemplate;

@safe:
import models.portals;

// 
class DPortalPageTemplateEntity : DEntity {
  mixin(EntityThis!("PortalPageTemplateEntity"));

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
        "pageTemplateId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Page Template	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Page Template	
        "statusCode_display": StringAttribute, //		
        "name": StringAttribute, //	Shows the name of the custom entity.	
        "isDefault": StringAttribute, //		
        "rewriteURL": StringAttribute, //		
        "websiteId": StringAttribute, //	Unique identifier for Website associated with Page Template.	
        "description": StringAttribute, //		
        "entityName": StringAttribute, //		
        "type": StringAttribute, //	The type of the record.	
        "type_display": StringAttribute, //		
        "useWebsiteHeaderAndFooter": StringAttribute, //	Control whether this web template page template will be rendered using the website header and footer, or control rendering of all page content.	
        "webTemplateId": StringAttribute, //	Unique identifier for Web Template associated with Page Template.	
      ])
      .registerPath("portal_pagetemplates")      
      .routingPath("/portals/pagetemplates");
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
mixin(EntityCalls!("PortalPageTemplateEntity"));