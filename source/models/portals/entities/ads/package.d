module models.portals.entities.ads;

public {
  import models.portals.entities.ads.ad;
  import models.portals.entities.ads.placement;
}

version(test_model_portals) { unittest {
  assert(EntityRegistry.contains(PortalAdEntity));
  assert(EntityRegistry.contains(PortalAdPlacementEntity));
}}