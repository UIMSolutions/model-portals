module models.portals.entities.invitation;

@safe:
import models.portals;

// 
class DPortalInvitationEntity : DEntity {
  mixin(EntityThis!("PortalInvitationEntity"));

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
        "invitationId": StringAttribute, //	Shows the entity instance.	
        "stateCode": StringAttribute, //	Status of the Invitation	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Select the invitation's status.	
        "statusCode_display": StringAttribute, //		
        "name": StringAttribute, //	Type the name of the custom entity.	
        "assignToAccount": StringAttribute, //	An account record to assign the redeemed contact to.	
        "expiryDate": StringAttribute, //	The date the invitation is no longer valid for redemption.	
        "invitationCode": StringAttribute, //	Shows the user who is redeeming the invitation.	
        "inviteContact": StringAttribute, //	The contact to send an invitation to.	
        "inviterContact": StringAttribute, //	The contact that invited.	
        "maximumRedemptions": StringAttribute, //		
        "redeemedContact": StringAttribute, //	The contact associated with the redemption of this invitation.	
        "redemptions": StringAttribute, //	The current number of times this invitation has been redeemed.	
        "redemptionWorkflow": StringAttribute, //	A workflow to execute on the redeeming contact.	
        "type": StringAttribute, //	The type of invitation.	
        "type_display": StringAttribute, //		
        "website": StringAttribute, //	Unique identifier for Website associated with Invitation.	
      ])
      .registerPath("portal_invitations")      
      .routingPath("/portals/invitations");
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
mixin(EntityCalls!("PortalInvitationEntity"));