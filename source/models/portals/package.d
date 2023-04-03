module models.portals;

@safe:
// DLang libraries (Phobos)
public import std.stdio;
public import std.string;
public import std.uuid;

// External libraries
public import vibe.d;

// UIM libraries
public {
  import uim.core;
  import uim.oop;
  import uim.models;
}

// public import models.applications;
public { // Required model packages
  import models.systems;
}

public { // model.portals packages
  import models.portals.attributes;
  import models.portals.classes;
  import models.portals.elements;
  import models.portals.entities;
  import models.portals.usecases;
  import models.portals.values;
}

unittest {
  assert(EntityRegistry.contains(PortalAdEntity.registerPath));
}