module models.portals.entities.cases.case_;

@safe:
import models.portals;

// Service request case associated with a contract.
class DPortalCaseEntity : DEntity {
  mixin(EntityThis!("PortalCaseEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        ContactIdAttribute, // en":"Unique identifier of the contact associated with the case. 
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user. 
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user. 
        OwnerIdAttribute, // Owner Id 
        StateCodeAttribute, // Shows whether the case is active, resolved, or canceled. Resolved and canceled cases are read-only and can't be edited unless they are reactivated. 
        StatusCodeAttribute, // Select the case's status.
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated. 
        "importSequenceNumber": NumberAttribute, //Sequence number of the import that created this record. 
        "ownerIdType": StringAttribute, // The type of owner, either User or Team. 
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record 
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity. 
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record. 
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only. 
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created. 
        "incidentId": UUIDAttribute, // Unique identifier of the case. 
        "emailAddress": StringAttribute, // The primary email address for the entity. 
        "title": StringAttribute, // Type a subject or descriptive name, such as the request, issue, or company name, to identify the case in Microsoft Dynamics 365 views. 
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity. 
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located. 
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur. 
        "activitiesComplete": StringAttribute, // This attribute is used for Sample Service Business Processes. 
        "actualServiceUnits": StringAttribute, // Type the number of service units that were actually required to resolve the case. 
        "billedServiceUnits": StringAttribute, // Type the number of service units that were billed to the customer for the case. 
        "blockedProfile": StringAttribute, // Details whether the profile is blocked or not. 
        "caseOriginCode": StringAttribute, // Select how contact about the case was originated, such as email, phone, or web, for use in reporting and analysis. 
        "caseOriginCode_display": StringAttribute, // 
        "caseTypeCode": StringAttribute, // Select the type of case to identify the incident for use in case routing and analysis. 
        "caseTypeCode_display": StringAttribute, // 
        "checkEmail": StringAttribute, // This attribute is used for Sample Service Business Processes. 
        "contractDetailId": UUIDAttribute, // Choose the contract line that the case should be logged under to make sure the customer is charged correctly. 
        "contractId": UUIDAttribute, // Choose the service contract that the case should be logged under to make sure the customer is eligible for support services. 
        "contractServiceLevelCode": StringAttribute, // Select the service level for the case to make sure the case is handled correctly. 
        "contractServiceLevelCode_display": StringAttribute, // 
        "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities. 
        "customerIdType": StringAttribute, // The type of customer, either Account or Contact. 
        "customerSatisfactionCode": StringAttribute, // Select the customer's level of satisfaction with the handling and resolution of the case. 
        "customerSatisfactionCode_display": StringAttribute, // 
        "entitlementId": UUIDAttribute, // Choose the entitlement that is applicable for the case. 
        "SLAId": UUIDAttribute, // Choose the service level agreement (SLA) that you want to apply to the case record. 
        "firstResponseSLAStatus": StringAttribute, // Shows the status of the initial response time for the case according to the terms of the SLA. 
        "firstResponseSLAStatus_display": StringAttribute, // 
        "followupBy": UUIDAttribute, // Enter the date by which a customer service representative has to follow up with the customer on this case. 
        "followUpTaskCreated": StringAttribute, // This attribute is used for Sample Service Business Processes. 
        "incidentStageCode": StringAttribute, // Select the current stage of the service process for the case to assist service team members when they review or transfer a case. 
        "incidentStageCode_display": StringAttribute, // 
        "isDecrementing": BooleanAttribute, // For system use only. 
        "kbArticleId": UUIDAttribute, // Choose the article that contains additional information or a resolution for the case, for reference during research or follow up with the customer. 
        "messageTypeCode": StringAttribute, // Shows whether the post originated as a public or private message. 
        "messageTypeCode_display": StringAttribute, // 
        "priorityCode": StringAttribute, // Select the priority so that preferred customers or critical issues are handled quickly. 
        "priorityCode_display": StringAttribute, // 
        "productId": UUIDAttribute, // Choose the product associated with the case to identify warranty, service, or other product issues and be able to report the number of incidents for each product. 
        "productSerialNumber": NumberAttribute, //Type the serial number of the product that is associated with this case, so that the number of cases per product can be reported. 
        "existingCase": StringAttribute, // Select an existing case for the customer that has been populated. For internal use only. 
        "resolveBySLAStatus": StringAttribute, // Shows the status of the resolution time for the case according to the terms of the SLA. 
        "resolveBySLAStatus_display": StringAttribute, // 
        "responsibleContactId": UUIDAttribute, // en":"Choose an additional customer contact who can also help resolve the case. 
        "sentimentValue": StringAttribute, // Value derived after assessing words commonly associated with a negative, neutral, or positive sentiment that occurs in a social post. Sentiment information can also be reported as numeric values. 
        "influenceScore": StringAttribute, // Will contain the Influencer score coming from NetBreeze. 
        "serviceStage": StringAttribute, // Select the stage, in the case resolution process, that the case is in. 
        "serviceStage_display": StringAttribute, // 
        "severityCode": StringAttribute, // Select the severity of this case to indicate the incident's impact on the customer's business. 
        "severityCode_display": StringAttribute, // 
        "SLAInvokedId": UUIDAttribute, // Last SLA that was applied to this case. This field is for internal use only. 
        "socialProfileId": UUIDAttribute, // Unique identifier of the social profile with which the case is associated. 
        "subjectId": UUIDAttribute, // Choose the subject for the case, such as catalog request or product complaint, so customer service managers can identify frequent requests or problem areas. Administrators can configure subjects under Business Management in the Settings area. 
        "ticketNumber": NumberAttribute, //Shows the case number for customer reference and searching capabilities. This cannot be modified. 
        "resolveBy": UUIDAttribute, // Enter the date by when the case must be resolved. 
        "responseBy": UUIDAttribute, // For internal use only. 
        "customerContacted": StringAttribute, // Tells whether customer service representative has contacted the customer or not. 
        "firstResponseSent": StringAttribute, // Indicates if the first response has been sent. 
        "isEscalated": BooleanAttribute, // Indicates if the case has been escalated. 
        "escalatedOn": TimestampAttribute, // Indicates the date and time when the case was escalated. 
        "primaryContactId": UUIDAttribute, // en":"Select a primary contact for this case. 
        "resolveByKPIId": UUIDAttribute, // For internal use only. 
        "firstResponseByKPIId": UUIDAttribute, // For internal use only. 
        "decrementEntitlementTerm": StringAttribute, // Shows whether terms of the associated entitlement should be decremented or not. 
        "entityImageId": UUIDAttribute, // 
        "accountId": UUIDAttribute, // Unique identifier of the account with which the case is associated. 
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency. 
        "transactionCurrencyId": UUIDAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency. 
        "resolutionDate": DateAttribute, // 
        "stepsToReproduce": StringAttribute, // 
        "adxCreatedByIPAddress": StringAttribute, // 
        "adxCreatedByUsername": StringAttribute, // 
        "adxModifiedByIPAddress": StringAttribute, // 
        "adxModifiedByUsername": StringAttribute, // 
        "createdByExternalParty": StringAttribute, // Shows the external party who created the record. 
        "modifiedByExternalParty": StringAttribute, // Shows the external party who modified the record. 
        "masterId": UUIDAttribute, // Choose the primary case the current case was merged into.
        "merged": StringAttribute, // Tells whether the incident has been merged with another incident.
        "numberOfChildIncidents": StringAttribute, // Number of child incidents associated with the incident.
        "resolution": StringAttribute, // 
        "routeCase": StringAttribute, // Tells whether the incident has been routed to queue or not.
        "parentCaseId": UUIDAttribute, // Choose the parent case for a case.
        "partnerContact": StringAttribute, // Allows a partner contact to be assigned to a specific case. 
        "partnerId": UUIDAttribute, // Creates a Relationship between a Partner (account) and a case for indirect service arrangements.
        "publishToWeb": StringAttribute, // If set to Yes, the case will be visible and searchable on portals connected to this organization. 
        "onHoldTime": TimeAttribute, // Shows the duration in minutes for which the case was on hold. 
        "lastOnHoldTime": DatetimeAttribute, // Contains the date time stamp of the last on hold time. 
      ])
      .registerPath("portal_cases")      
      .routingPath("/portals/cases");        
  }
}
mixin(EntityCalls!("PortalCaseEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalCaseEntity);
  
  auto entity = PortalCaseEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}