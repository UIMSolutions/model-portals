module models.portals.entities;

public { // Packages
    import models.portals.entities.ads;
    import models.portals.entities.badges;
    import models.portals.entities.blogs;
    import models.portals.entities.cases;
    import models.portals.entities.forums;
    import models.portals.entities.ideas;
    import models.portals.entities.polls;
    import models.portals.entities.web;
}

public { // Modules
    import models.portals.entities.account;
    import models.portals.entities.article;
    import models.portals.entities.contact;
    import models.portals.entities.externalidentity;
    import models.portals.entities.feedback;
    import models.portals.entities.invitation;
    import models.portals.entities.inviteredemption;
    import models.portals.entities.knowledgearticleview;
    import models.portals.entities.language;
    import models.portals.entities.opportunity;
    import models.portals.entities.pagetemplate;
    import models.portals.entities.publishingstate;
    import models.portals.entities.tag;
}

static this() {
  import uim.models;
   
  EntityRegistry
    .register(
      PortalAccountEntity,
      PortalAdEntity,
      PortalAdPlacementEntity,
      PortalArticleEntity,
      PortalBadgeEntity,
      PortalBadgeType,
      PortalBlogEntity,
      PortalBlogPostEntity,
      PortalCaseEntity,
      PortalCaseDeflectionEntity,
      PortalForumEntity,
      PortalForumPostEntity,
      PortalForumThreadTypeEntity,
      PortalForumThreadEntity,
      PortalIdeaForumEntity,
      PortalIdeaEntity,
      PortalPollOptionEntity,
      PortalPollEntity,
      PortalPollSubmissionEntity,
      PortalWebFileEntity,
      PortalWebFileLogEntity,
      PortalWebPageLogEntity,
      PortalWebPageEntity,
      PortalWebSiteLanguageEntity,
      PortalWebSiteEntity,
      PortalWebRoleEntity,
      PortalWebTemplateEntity,
      PortalExternalIdentityEntity
    );
}