module models.portals;

@safe:
// DLang libraries (Phobos)
public import std.stdio;
public import std.string;
public import std.uuid;

// External libraries
public import vibe.d;

// UIM libraries
public import uim.core;
public import uim.oop;
public import uim.entities;

public import models.portals.classes;
public import models.portals.entities;

static this() {
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