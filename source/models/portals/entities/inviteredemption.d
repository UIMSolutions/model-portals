module models.portals.entities.inviteredemption;

@safe:
import models.portals;

// 
class DPortalInviteRedemptionEntity : DEntity {
  mixin(EntityThis!("PortalInviteRedemptionEntity"));

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
        "actualEnd": StringAttribute, //	Enter the actual end time of the activity.	
        "activityId": StringAttribute, //	Shows the activity.	
        "isBilled": StringAttribute, //	Shows whether the activity was billed as part of resolving a case.	
        "description": StringAttribute, //	Description of the activity.	
        "activityTypeCode": StringAttribute, //	Shows the type of activity.	
        "activityTypeCode_display": StringAttribute, //		
        "stateCode": StringAttribute, //	Status of the activity.	
        "stateCode_display": StringAttribute, //		
        "scheduledEnd": StringAttribute, //	Enter the scheduled end time of the activity.	
        "scheduledDurationMinutes": StringAttribute, //	Enter the scheduled duration of the activity, in minutes.	
        "actualDurationMinutes": StringAttribute, //	Enter the actual duration of the activity in minutes.	
        "statusCode": StringAttribute, //	Select the activity's status.	
        "statusCode_display": StringAttribute, //		
        "actualStart": StringAttribute, //	Enter the actual start time of the activity.	
        "priorityCode": StringAttribute, //	Shows the priority of the activity.	
        "priorityCode_display": StringAttribute, //		
        "regardingObjectId": StringAttribute, //	Unique identifier of the object with which the activity is associated.	
        "subject": StringAttribute, //	Subject associated with the activity.	
        "isWorkflowCreated": StringAttribute, //	Shows whether the activity was created from a workflow rule.	
        "scheduledStart": StringAttribute, //	Enter the scheduled end time of the activity.	
        "instanceTypeCode": StringAttribute, //	Shows the type of instance of a recurring series.	
        "instanceTypeCode_display": StringAttribute, //		
        "seriesId": StringAttribute, //	Shows the ID of the recurring series of an instance.	
        "isRegularActivity": StringAttribute, //	Shows whether the activity is a regular activity type or event type.	
        "transactionCurrencyId": StringAttribute, //	Unique identifier of the currency associated with the activitypointer.	
        "exchangeRate": StringAttribute, //	Exchange rate for the currency associated with the activitypointer with respect to the base currency.	
        "leftVoiceMail": StringAttribute, //	Select if the voice mail was left.	
        "community": StringAttribute, //	Shows how contact about the social activity originated, such as from Twitter or Facebook. This field is read-only.	
        "community_display": StringAttribute, //		
        "traversedPath": StringAttribute, //	For internal use only.	
        "isMapiPrivate": StringAttribute, //	For internal use only.	
        "exchangeWebLink": StringAttribute, //	Shows the web link of Activity of type email.	
        "exchangeItemId": StringAttribute, //	The message id of activity which is returned from Exchange Server.	
        "deliveryPriorityCode": StringAttribute, //	Shows the priority of delivery of the activity to the email server.	
        "deliveryPriorityCode_display": StringAttribute, //		
        "sentOn": StringAttribute, //	Shows the date and time when the activity was sent.	
        "deliveryLastAttemptedOn": StringAttribute, //	Shows the date and time when the delivery of the activity was last attempted.	
        "senderMailboxId": StringAttribute, //	Unique identifier of the mailbox associated with the sender of the email message.	
        "postponeActivityProcessingUntil": StringAttribute, //	For internal use only.	
        "processId": StringAttribute, //	Shows the process.	
        "stageId": StringAttribute, //	Shows the stage.	
        "activityAdditionalParams": StringAttribute, //	Additional information provided by the external application as JSON. For internal use only.	
        "SLAId": StringAttribute, //	Choose the service level agreement (SLA) that you want to apply to the case record.	
        "SLAInvokedId": StringAttribute, //	Last SLA that was applied to this case. This field is for internal use only.	
        "onHoldTime": StringAttribute, //	Shows how long, in minutes, that the record was on hold.	
        "lastOnHoldTime": StringAttribute, //	Contains the date and time stamp of the last on hold time.	
        "sortDate": StringAttribute, //	Shows the date and time by which the activities are sorted.	
        "serviceId": StringAttribute, //	Unique identifier of an associated service.	
        "from": StringAttribute, //	Enter the person who the activity is from.	
        "to": StringAttribute, //	Enter the person who is the receiver of the activity.	
        "CC": StringAttribute, //	Enter the carbon copy (cc) recipients of the activity.	
        "BCC": StringAttribute, //	Enter the blind carbon copy (bcc) recipients of the activity.	
        "requiredAttendees": StringAttribute, //	List of required attendees for the activity.	
        "optionalAttendees": StringAttribute, //	List of optional attendees for the activity.	
        "organizer": StringAttribute, //	Enter the person who organized the activity.	
        "resources": StringAttribute, //	Enter the users or facility/equipment that are required for the activity.	
        "customers": StringAttribute, //	Customer with which the activity is associated.	
        "partners": StringAttribute, //	Shows the outsource vendor who the activity is associated with.	
        "ipAddress": StringAttribute, //		
      ])
      .registerPath("portal_inviteredemptions")      
      .routingPath("/portals/inviteredemptions");
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
mixin(EntityCalls!("PortalInviteRedemptionEntity"));