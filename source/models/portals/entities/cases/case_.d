module models.portals.entities.cases.case_;

@safe:
import models.portals;

// Service request case associated with a contract.
class DPortalCaseEntity : DOOPEntity {
  mixin(EntityThis!("PortalCaseEntity"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user. "]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated. "]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record. "]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id "]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team. "]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record "]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity. "]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record. "]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only. "]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created. "]),
        "incidentId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the case. "]),
        "emailAddress": OOPStringAttribute.descriptions(["en":"The primary email address for the entity. "]),
        "title": OOPStringAttribute.descriptions(["en":"Type a subject or descriptive name, such as the request, issue, or company name, to identify the case in Microsoft Dynamics 365 views. "]),
        "processId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the process associated with the entity. "]),
        "stageId": OOPUUIDAttribute.descriptions(["en":"Contains the id of the stage where the entity is located. "]),
        "traversedPath": OOPStringAttribute.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur. "]),
        "activitiesComplete": OOPStringAttribute.descriptions(["en":"This attribute is used for Sample Service Business Processes. "]),
        "actualServiceUnits": OOPStringAttribute.descriptions(["en":"Type the number of service units that were actually required to resolve the case. "]),
        "billedServiceUnits": OOPStringAttribute.descriptions(["en":"Type the number of service units that were billed to the customer for the case. "]),
        "blockedProfile": OOPStringAttribute.descriptions(["en":"Details whether the profile is blocked or not. "]),
        "caseOriginCode": OOPStringAttribute.descriptions(["en":"Select how contact about the case was originated, such as email, phone, or web, for use in reporting and analysis. "]),
        "caseOriginCode_display": OOPStringAttribute.descriptions(["en":""]),
        "caseTypeCode": OOPStringAttribute.descriptions(["en":"Select the type of case to identify the incident for use in case routing and analysis. "]),
        "caseTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "checkEmail": OOPStringAttribute.descriptions(["en":"This attribute is used for Sample Service Business Processes. "]),
        "contractDetailId": OOPUUIDAttribute.descriptions(["en":"Choose the contract line that the case should be logged under to make sure the customer is charged correctly. "]),
        "contractId": OOPUUIDAttribute.descriptions(["en":"Choose the service contract that the case should be logged under to make sure the customer is eligible for support services. "]),
        "contractServiceLevelCode": OOPStringAttribute.descriptions(["en":"Select the service level for the case to make sure the case is handled correctly. "]),
        "contractServiceLevelCode_display": OOPStringAttribute.descriptions(["en":""]),
        "customerId": OOPUUIDAttribute.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities. "]),
        "customerIdType": OOPStringAttribute.descriptions(["en":"The type of customer, either Account or Contact. "]),
        "customerSatisfactionCode": OOPStringAttribute.descriptions(["en":"Select the customer's level of satisfaction with the handling and resolution of the case. "]),
        "customerSatisfactionCode_display": OOPStringAttribute.descriptions(["en":""]),
        "entitlementId": OOPUUIDAttribute.descriptions(["en":"Choose the entitlement that is applicable for the case. "]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the case record. "]),
        "firstResponseSLAStatus": OOPStringAttribute.descriptions(["en":"Shows the status of the initial response time for the case according to the terms of the SLA. "]),
        "firstResponseSLAStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "followupBy": OOPLinkAttribute("aplUser").descriptions(["en":"Enter the date by which a customer service representative has to follow up with the customer on this case. "]),
        "followUpTaskCreated": OOPStringAttribute.descriptions(["en":"This attribute is used for Sample Service Business Processes. "]),
        "incidentStageCode": OOPStringAttribute.descriptions(["en":"Select the current stage of the service process for the case to assist service team members when they review or transfer a case. "]),
        "incidentStageCode_display": OOPStringAttribute.descriptions(["en":""]),
        "isDecrementing": OOPBooleanAttribute.descriptions(["en":"For system use only. "]),
        "kbArticleId": OOPUUIDAttribute.descriptions(["en":"Choose the article that contains additional information or a resolution for the case, for reference during research or follow up with the customer. "]),
        "messageTypeCode": OOPStringAttribute.descriptions(["en":"Shows whether the post originated as a public or private message. "]),
        "messageTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "priorityCode": OOPStringAttribute.descriptions(["en":"Select the priority so that preferred customers or critical issues are handled quickly. "]),
        "priorityCode_display": OOPStringAttribute.descriptions(["en":""]),
        "productId": OOPUUIDAttribute.descriptions(["en":"Choose the product associated with the case to identify warranty, service, or other product issues and be able to report the number of incidents for each product. "]),
        "productSerialNumber": OOPNumberAttribute.descriptions(["en":"Type the serial number of the product that is associated with this case, so that the number of cases per product can be reported. "]),
        "existingCase": OOPStringAttribute.descriptions(["en":"Select an existing case for the customer that has been populated. For internal use only. "]),
        "resolveBySLAStatus": OOPStringAttribute.descriptions(["en":"Shows the status of the resolution time for the case according to the terms of the SLA. "]),
        "resolveBySLAStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "responsibleContactId": OOPLinkAttribute("aplContact").descriptions(["en":"Choose an additional customer contact who can also help resolve the case. "]),
        "sentimentValue": OOPStringAttribute.descriptions(["en":"Value derived after assessing words commonly associated with a negative, neutral, or positive sentiment that occurs in a social post. Sentiment information can also be reported as numeric values. "]),
        "influenceScore": OOPStringAttribute.descriptions(["en":"Will contain the Influencer score coming from NetBreeze. "]),
        "serviceStage": OOPStringAttribute.descriptions(["en":"Select the stage, in the case resolution process, that the case is in. "]),
        "serviceStage_display": OOPStringAttribute.descriptions(["en":""]),
        "severityCode": OOPStringAttribute.descriptions(["en":"Select the severity of this case to indicate the incident's impact on the customer's business. "]),
        "severityCode_display": OOPStringAttribute.descriptions(["en":""]),
        "SLAInvokedId": OOPUUIDAttribute.descriptions(["en":"Last SLA that was applied to this case. This field is for internal use only. "]),
        "socialProfileId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the social profile with which the case is associated. "]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the case is active, resolved, or canceled. Resolved and canceled cases are read-only and can't be edited unless they are reactivated. "]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "subjectId": OOPUUIDAttribute.descriptions(["en":"Choose the subject for the case, such as catalog request or product complaint, so customer service managers can identify frequent requests or problem areas. Administrators can configure subjects under Business Management in the Settings area. "]),
        "ticketNumber": OOPNumberAttribute.descriptions(["en":"Shows the case number for customer reference and searching capabilities. This cannot be modified. "]),
        "resolveBy": OOPLinkAttribute("aplUser").descriptions(["en":"Enter the date by when the case must be resolved. "]),
        "responseBy": OOPLinkAttribute("aplUser").descriptions(["en":"For internal use only. "]),
        "customerContacted": OOPStringAttribute.descriptions(["en":"Tells whether customer service representative has contacted the customer or not. "]),
        "firstResponseSent": OOPStringAttribute.descriptions(["en":"Indicates if the first response has been sent. "]),
        "isEscalated": OOPBooleanAttribute.descriptions(["en":"Indicates if the case has been escalated. "]),
        "escalatedOn": OOPTimestampAttribute.descriptions(["en":"Indicates the date and time when the case was escalated. "]),
        "primaryContactId": OOPLinkAttribute("aplContact").descriptions(["en":"Select a primary contact for this case. "]),
        "resolveByKPIId": OOPUUIDAttribute.descriptions(["en":"For internal use only. "]),
        "firstResponseByKPIId": OOPUUIDAttribute.descriptions(["en":"For internal use only. "]),
        "decrementEntitlementTerm": OOPStringAttribute.descriptions(["en":"Shows whether terms of the associated entitlement should be decremented or not. "]),
        "entityImageId": OOPUUIDAttribute.descriptions(["en":""]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Unique identifier of the account with which the case is associated. "]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Unique identifier of the contact associated with the case. "]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency. "]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency. "]),
        "resolutionDate": OOPAttributeDate.descriptions(["en":""]),
        "stepsToReproduce": OOPStringAttribute.descriptions(["en":""]),
      ])
      .addValues([
        "statusCode": StatusCodeAttributeClass, // Select the case's status.
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