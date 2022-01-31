module models.portals.cases.case_;

@safe:
import uim.entities;

// Service request case associated with a contract.
class DPTLCase : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user. "]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user. "]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated. "]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record. "]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id "]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team. "]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record "]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity. "]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record. "]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only. "]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created. "]),
      "incidentId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the case. "]),
      "emailAddress": OOPAttributeString.descriptions(["en":"The primary email address for the entity. "]),
      "title": OOPAttributeString.descriptions(["en":"Type a subject or descriptive name, such as the request, issue, or company name, to identify the case in Microsoft Dynamics 365 views. "]),
      "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity. "]),
      "stageId": OOPAttributeUUID.descriptions(["en":"Contains the id of the stage where the entity is located. "]),
      "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur. "]),
      "activitiesComplete": OOPAttributeString.descriptions(["en":"This attribute is used for Sample Service Business Processes. "]),
      "actualServiceUnits": OOPAttributeString.descriptions(["en":"Type the number of service units that were actually required to resolve the case. "]),
      "billedServiceUnits": OOPAttributeString.descriptions(["en":"Type the number of service units that were billed to the customer for the case. "]),
      "blockedProfile": OOPAttributeString.descriptions(["en":"Details whether the profile is blocked or not. "]),
      "caseOriginCode": OOPAttributeString.descriptions(["en":"Select how contact about the case was originated, such as email, phone, or web, for use in reporting and analysis. "]),
      "caseOriginCode_display": OOPAttributeString.descriptions(["en":""]),
      "caseTypeCode": OOPAttributeString.descriptions(["en":"Select the type of case to identify the incident for use in case routing and analysis. "]),
      "caseTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "checkEmail": OOPAttributeString.descriptions(["en":"This attribute is used for Sample Service Business Processes. "]),
      "contractDetailId": OOPAttributeUUID.descriptions(["en":"Choose the contract line that the case should be logged under to make sure the customer is charged correctly. "]),
      "contractId": OOPAttributeUUID.descriptions(["en":"Choose the service contract that the case should be logged under to make sure the customer is eligible for support services. "]),
      "contractServiceLevelCode": OOPAttributeString.descriptions(["en":"Select the service level for the case to make sure the case is handled correctly. "]),
      "contractServiceLevelCode_display": OOPAttributeString.descriptions(["en":""]),
      "customerId": OOPAttributeUUID.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities. "]),
      "customerIdType": OOPAttributeString.descriptions(["en":"The type of customer, either Account or Contact. "]),
      "customerSatisfactionCode": OOPAttributeString.descriptions(["en":"Select the customer's level of satisfaction with the handling and resolution of the case. "]),
      "customerSatisfactionCode_display": OOPAttributeString.descriptions(["en":""]),
      "entitlementId": OOPAttributeUUID.descriptions(["en":"Choose the entitlement that is applicable for the case. "]),
      "SLAId": OOPAttributeLink("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the case record. "]),
      "firstResponseSLAStatus": OOPAttributeString.descriptions(["en":"Shows the status of the initial response time for the case according to the terms of the SLA. "]),
      "firstResponseSLAStatus_display": OOPAttributeString.descriptions(["en":""]),
      "followupBy": OOPAttributeLink("aplUser").descriptions(["en":"Enter the date by which a customer service representative has to follow up with the customer on this case. "]),
      "followUpTaskCreated": OOPAttributeString.descriptions(["en":"This attribute is used for Sample Service Business Processes. "]),
      "incidentStageCode": OOPAttributeString.descriptions(["en":"Select the current stage of the service process for the case to assist service team members when they review or transfer a case. "]),
      "incidentStageCode_display": OOPAttributeString.descriptions(["en":""]),
      "isDecrementing": OOPAttributeBoolean.descriptions(["en":"For system use only. "]),
      "kbArticleId": OOPAttributeUUID.descriptions(["en":"Choose the article that contains additional information or a resolution for the case, for reference during research or follow up with the customer. "]),
      "messageTypeCode": OOPAttributeString.descriptions(["en":"Shows whether the post originated as a public or private message. "]),
      "messageTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "priorityCode": OOPAttributeString.descriptions(["en":"Select the priority so that preferred customers or critical issues are handled quickly. "]),
      "priorityCode_display": OOPAttributeString.descriptions(["en":""]),
      "productId": OOPAttributeUUID.descriptions(["en":"Choose the product associated with the case to identify warranty, service, or other product issues and be able to report the number of incidents for each product. "]),
      "productSerialNumber": OOPAttributeNumber.descriptions(["en":"Type the serial number of the product that is associated with this case, so that the number of cases per product can be reported. "]),
      "existingCase": OOPAttributeString.descriptions(["en":"Select an existing case for the customer that has been populated. For internal use only. "]),
      "resolveBySLAStatus": OOPAttributeString.descriptions(["en":"Shows the status of the resolution time for the case according to the terms of the SLA. "]),
      "resolveBySLAStatus_display": OOPAttributeString.descriptions(["en":""]),
      "responsibleContactId": OOPAttributeLink("aplContact").descriptions(["en":"Choose an additional customer contact who can also help resolve the case. "]),
      "sentimentValue": OOPAttributeString.descriptions(["en":"Value derived after assessing words commonly associated with a negative, neutral, or positive sentiment that occurs in a social post. Sentiment information can also be reported as numeric values. "]),
      "influenceScore": OOPAttributeString.descriptions(["en":"Will contain the Influencer score coming from NetBreeze. "]),
      "serviceStage": OOPAttributeString.descriptions(["en":"Select the stage, in the case resolution process, that the case is in. "]),
      "serviceStage_display": OOPAttributeString.descriptions(["en":""]),
      "severityCode": OOPAttributeString.descriptions(["en":"Select the severity of this case to indicate the incident's impact on the customer's business. "]),
      "severityCode_display": OOPAttributeString.descriptions(["en":""]),
      "SLAInvokedId": OOPAttributeUUID.descriptions(["en":"Last SLA that was applied to this case. This field is for internal use only. "]),
      "socialProfileId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the social profile with which the case is associated. "]),
      "stateCode": OOPAttributeString.descriptions(["en":"Shows whether the case is active, resolved, or canceled. Resolved and canceled cases are read-only and can't be edited unless they are reactivated. "]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Select the case's status. "]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "subjectId": OOPAttributeUUID.descriptions(["en":"Choose the subject for the case, such as catalog request or product complaint, so customer service managers can identify frequent requests or problem areas. Administrators can configure subjects under Business Management in the Settings area. "]),
      "ticketNumber": OOPAttributeNumber.descriptions(["en":"Shows the case number for customer reference and searching capabilities. This cannot be modified. "]),
      "masterId": OOPAttributeUUID.descriptions(["en":"Choose the primary case the current case was merged into. "]),
      "parentCaseId": OOPAttributeUUID.descriptions(["en":"Choose the parent case for a case. "]),
      "numberOfChildIncidents": OOPAttributeString.descriptions(["en":"Number of child incidents associated with the incident. "]),
      "merged": OOPAttributeString.descriptions(["en":"Tells whether the incident has been merged with another incident. "]),
      "routeCase": OOPAttributeString.descriptions(["en":"Tells whether the incident has been routed to queue or not. "]),
      "resolveBy": OOPAttributeLink("aplUser").descriptions(["en":"Enter the date by when the case must be resolved. "]),
      "responseBy": OOPAttributeLink("aplUser").descriptions(["en":"For internal use only. "]),
      "customerContacted": OOPAttributeString.descriptions(["en":"Tells whether customer service representative has contacted the customer or not. "]),
      "firstResponseSent": OOPAttributeString.descriptions(["en":"Indicates if the first response has been sent. "]),
      "isEscalated": OOPAttributeBoolean.descriptions(["en":"Indicates if the case has been escalated. "]),
      "escalatedOn": OOPAttributeTimestamp.descriptions(["en":"Indicates the date and time when the case was escalated. "]),
      "primaryContactId": OOPAttributeLink("aplContact").descriptions(["en":"Select a primary contact for this case. "]),
      "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows the duration in minutes for which the case was on hold. "]),
      "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date time stamp of the last on hold time. "]),
      "resolveByKPIId": OOPAttributeUUID.descriptions(["en":"For internal use only. "]),
      "firstResponseByKPIId": OOPAttributeUUID.descriptions(["en":"For internal use only. "]),
      "decrementEntitlementTerm": OOPAttributeString.descriptions(["en":"Shows whether terms of the associated entitlement should be decremented or not. "]),
      "entityImageId": OOPAttributeUUID.descriptions(["en":""]),
      "accountId": OOPAttributeLink("aplAccount").descriptions(["en":"Unique identifier of the account with which the case is associated. "]),
      "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Unique identifier of the contact associated with the case. "]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency. "]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency. "]),
      "createdByExternalParty": OOPAttributeString.descriptions(["en":"Shows the external party who created the record. "]),
      "modifiedByExternalParty": OOPAttributeString.descriptions(["en":"Shows the external party who modified the record. "]),
      "adxCreatedByIPAddress": OOPAttributeString.descriptions(["en":""]),
      "adxCreatedByUsername": OOPAttributeString.descriptions(["en":""]),
      "adxModifiedByIPAddress": OOPAttributeString.descriptions(["en":""]),
      "adxModifiedByUsername": OOPAttributeString.descriptions(["en":""]),
      "partnerContact": OOPAttributeString.descriptions(["en":"Allows a partner contact to be assigned to a specific case. "]),
      "partnerId": OOPAttributeUUID.descriptions(["en":"Creates a Relationship between a Partner (account) and a case for indirect service arrangements. "]),
      "publishToWeb": OOPAttributeString.descriptions(["en":"If set to Yes, the case will be visible and searchable on portals connected to this organization. "]),
      "resolution": OOPAttributeString.descriptions(["en":""]),
      "resolutionDate": OOPAttributeDate.descriptions(["en":""]),
      "stepsToReproduce": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aplCase"; }
  override string entityClasses() { return "aplCases"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("account", "accountId", "PTLAccount"));
  // mixin(GetEntity!("contact", "contactId", "PTLContact"));

}
auto PTLCase() { return new DPTLCase; } 
auto PTLCase(Json json) { return new DPTLCase(json); } 

unittest {
  version(uim_entities) {
    assert(PTLCase);
  
  auto entity = PTLCase;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}