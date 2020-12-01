
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.resources.resourcemanager-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.resources.resourcemanager.4.3.0.nupkg";
    sha256 = "89d88e0fddf16dbadbc304a70f898e440f51622fc3fd4e3c79152c9ff5a7586a";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.resources.resourcemanager-4.3.0/System.Resources.ResourceManager";
    unzip -x "$src" -d "$out/lib/mono/packages/system.resources.resourcemanager-4.3.0/System.Resources.ResourceManager";
  '';
}
