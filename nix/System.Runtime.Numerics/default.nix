
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.runtime.numerics-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.runtime.numerics.4.3.0.nupkg";
    sha256 = "3f98c70a031b80531888e36fce668a15e3aa7002033eefd4f1b395acd3d82aa7";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.runtime.numerics-4.3.0/System.Runtime.Numerics";
    unzip -x "$src" -d "$out/lib/mono/packages/system.runtime.numerics-4.3.0/System.Runtime.Numerics";
  '';
}
