module models.portals.entities.cases.case_;

@safe:
import models.portals;

// Service request case associated with a contract.
class DPortalCaseEntity : DOOPEntity {
  mixin(EntityThis!("PortalCaseEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user. "]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated. "]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record. "]),
        "ownerId": UUIDAttributeClass, // Owner Id "]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team. "]),
        "owningBusinessUnitId": UUIDAttributeClass, // Unique identifier for the business unit that owns the record "]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity. "]),
        "owningTeamId": TeamIdAttributeClass, // , // Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only. "]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created. "]),
        "incidentId": UUIDAttributeClass, // Unique identifier of the case. "]),
        "emailAddress": StringAttributeClass, // The primary email address for the entity. "]),
        "title": StringAttributeClass, // Type a subject or descriptive name, such as the request, issue, or company name, to identify the case in Microsoft Dynamics 365 views. "]),
        "processId": UUIDAttributeClass, // Contains the id of the process associated with the entity. "]),
        "stageId": UUIDAttributeClass, // Contains the id of the stage where the entity is located. "]),
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur. "]),
        "activitiesComplete": StringAttributeClass, // This attribute is used for Sample Service Business Processes. "]),
        "actualServiceUnits": StringAttributeClass, // Type the number of service units that were actually required to resolve the case. "]),
        "billedServiceUnits": StringAttributeClass, // Type the number of service units that were billed to the customer for the case. "]),
        "blockedProfile": StringAttributeClass, // Details whether the profile is blocked or not. "]),
        "caseOriginCode": StringAttributeClass, // Select how contact about the case was originated, such as email, phone, or web, for use in reporting and analysis. "]),
        "caseOriginCode_display": StringAttributeClass, // 
        "caseTypeCode": StringAttributeClass, // Select the type of case to identify the incident for use in case routing and analysis. "]),
        "caseTypeCode_display": StringAttributeClass, // 
        "checkEmail": StringAttributeClass, // This attribute is used for Sample Service Business Processes. "]),
        "contractDetailId": UUIDAttributeClass, // Choose the contract line that the case should be logged under to make sure the customer is charged correctly. "]),
        "contractId": UUIDAttributeClass, // Choose the service contract that the case should be logged under to make sure the customer is eligible for support services. "]),
        "contractServiceLevelCode": StringAttributeClass, // Select the service level for the case to make sure the case is handled correctly. "]),
        "contractServiceLevelCode_display": StringAttributeClass, // 
        "customerId": UUIDAttributeClass, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities. "]),
        "customerIdType": StringAttributeClass, // The type of customer, either Account or Contact. "]),
        "customerSatisfactionCode": StringAttributeClass, // Select the customer's level of satisfaction with the handling and resolution of the case. "]),
        "customerSatisfactionCode_display": StringAttributeClass, // 
        "entitlementId": UUIDAttributeClass, // Choose the entitlement that is applicable for the case. "]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the case record. "]),
        "firstResponseSLAStatus": StringAttributeClass, // Shows the status of the initial response time for the case according to the terms of the SLA. "]),
        "firstResponseSLAStatus_display": StringAttributeClass, // 
        "followupBy": UUIDAttributeClass, // Enter the date by which a customer service representative has to follow up with the customer on this case. "]),
        "followUpTaskCreated": StringAttributeClass, // This attribute is used for Sample Service Business Processes. "]),
        "incidentStageCode": StringAttributeClass, // Select the current stage of the service process for the case to assist service team members when they review or transfer a case. "]),
        "incidentStageCode_display": StringAttributeClass, // 
        "isDecrementing": OOPBooleanAttribute.descriptions(["en":"For system use only. "]),
        "kbArticleId": UUIDAttributeClass, // Choose the article that contains additional information or a resolution for the case, for reference during research or follow up with the customer. "]),
        "messageTypeCode": StringAttributeClass, // Shows whether the post originated as a public or private message. "]),
        "messageTypeCode_display": StringAttributeClass, // 
        "priorityCode": StringAttributeClass, // Select the priority so that preferred customers or critical issues are handled quickly. "]),
        "priorityCode_display": StringAttributeClass, // 
        "productId": UUIDAttributeClass, // Choose the product associated with the case to identify warranty, service, or other product issues and be able to report the number of incidents for each product. "]),
        "productSerialNumber": OOPNumberAttribute.descriptions(["en":"Type the serial number of the product that is associated with this case, so that the number of cases per product can be reported. "]),
        "existingCase": StringAttributeClass, // Select an existing case for the customer that has been populated. For internal use only. "]),
        "resolveBySLAStatus": StringAttributeClass, // Shows the status of the resolution time for the case according to the terms of the SLA. "]),
        "resolveBySLAStatus_display": StringAttributeClass, // 
        "responsibleContactId": UUIDAttributeClass, // en":"Choose an additional customer contact who can also help resolve the case. "]),
        "sentimentValue": StringAttributeClass, // Value derived after assessing words commonly associated with a negative, neutral, or positive sentiment that occurs in a social post. Sentiment information can also be reported as numeric values. "]),
        "influenceScore": StringAttributeClass, // Will contain the Influencer score coming from NetBreeze. "]),
        "serviceStage": StringAttributeClass, // Select the stage, in the case resolution process, that the case is in. "]),
        "serviceStage_display": StringAttributeClass, // 
        "severityCode": StringAttributeClass, // Select the severity of this case to indicate the incident's impact on the customer's business. "]),
        "severityCode_display": StringAttributeClass, // 
        "SLAInvokedId": UUIDAttributeClass, // Last SLA that was applied to this case. This field is for internal use only. "]),
        "socialProfileId": UUIDAttributeClass, // Unique identifier of the social profile with which the case is associated. "]),
        "subjectId": UUIDAttributeClass, // Choose the subject for the case, such as catalog request or product complaint, so customer service managers can identify frequent requests or problem areas. Administrators can configure subjects under Business Management in the Settings area. "]),
        "ticketNumber": OOPNumberAttribute.descriptions(["en":"Shows the case number for customer reference and searching capabilities. This cannot be modified. "]),
        "resolveBy": UUIDAttributeClass, // Enter the date by when the case must be resolved. "]),
        "responseBy": UUIDAttributeClass, // For internal use only. "]),
        "customerContacted": StringAttributeClass, // Tells whether customer service representative has contacted the customer or not. "]),
        "firstResponseSent": StringAttributeClass, // Indicates if the first response has been sent. "]),
        "isEscalated": OOPBooleanAttribute.descriptions(["en":"Indicates if the case has been escalated. "]),
        "escalatedOn": TimestampAttributeClass, // Indicates the date and time when the case was escalated. "]),
        "primaryContactId": UUIDAttributeClass, // en":"Select a primary contact for this case. "]),
        "resolveByKPIId": UUIDAttributeClass, // For internal use only. "]),
        "firstResponseByKPIId": UUIDAttributeClass, // For internal use only. "]),
        "decrementEntitlementTerm": StringAttributeClass, // Shows whether terms of the associated entitlement should be decremented or not. "]),
        "entityImageId": UUIDAttributeClass, // 
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Unique identifier of the account with which the case is associated. "]),
        "contactId": UUIDAttributeClass, // en":"Unique identifier of the contact associated with the case. "]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency. "]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency. "]),
        "resolutionDate": DateAttributeClass, // 
        "stepsToReproduce": StringAttributeClass, // 
      ])
      .addValues([
        StateCodeAttributeClass, // Shows whether the case is active, resolved, or canceled. Resolved and canceled cases are read-only and can't be edited unless they are reactivated. "]),
        StatusCodeAttributeClass, // Select the case's status.
      ])
      .addValues([
        "adxCreatedByIPAddress": StringAttributeClass, // 
        "adxCreatedByUsername": StringAttributeClass, // 
        "adxModifiedByIPAddress": StringAttributeClass, // 
        "adxModifiedByUsername": StringAttributeClass, // 
        "createdByExternalParty": StringAttributeClass, // Shows the external party who created the record. 
        "modifiedByExternalParty": StringAttributeClass, // Shows the external party who modified the record. 
        "masterId": UUIDAttributeClass, // Choose the primary case the current case was merged into.
        "merged": StringAttributeClass, // Tells whether the incident has been merged with another incident.
        "numberOfChildIncidents": StringAttributeClass, // Number of child incidents associated with the incident.
        "resolution": StringAttributeClass, // 
        "routeCase": StringAttributeClass, // Tells whether the incident has been routed to queue or not.
        "parentCaseId": UUIDAttributeClass, // Choose the parent case for a case.
        "partnerContact": StringAttributeClass, // Allows a partner contact to be assigned to a specific case. 
        "partnerId": UUIDAttributeClass, // Creates a Relationship between a Partner (account) and a case for indirect service arrangements.
        "publishToWeb": StringAttributeClass, // If set to Yes, the case will be visible and searchable on portals connected to this organization. 
        "onHoldTime": TimeAttributeClass, // Shows the duration in minutes for which the case was on hold. "]),
        "lastOnHoldTime": DatetimeAttributeClass, // Contains the date time stamp of the last on hold time. "]),
      ])
      .registerPath("portal_cases");    
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