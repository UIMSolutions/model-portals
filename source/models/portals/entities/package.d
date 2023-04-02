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
    import models.portals.entities.external_identity;
}

static this() {
  import uim.models;
   
  EntityRegistry
    .register(
      PortalAccountEntity,
      PortalAdEntity,
      PortalAdPlacementEntity,
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