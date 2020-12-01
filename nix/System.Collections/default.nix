
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.collections-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.collections.4.3.0.nupkg";
    sha256 = "69f63b554b43eb0ff9998aab71ef2442bbc321f4b61970c834387bdc88f124a7";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.collections-4.3.0/System.Collections";
    unzip -x "$src" -d "$out/lib/mono/packages/system.collections-4.3.0/System.Collections";
  '';
}
