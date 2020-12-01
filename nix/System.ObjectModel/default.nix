
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.objectmodel-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.objectmodel.4.3.0.nupkg";
    sha256 = "82d9919163f62b0af79c7b43874c98b5c7b7f33d70ac6cdbe9f8e6e2ff3037a4";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.objectmodel-4.3.0/System.ObjectModel";
    unzip -x "$src" -d "$out/lib/mono/packages/system.objectmodel-4.3.0/System.ObjectModel";
  '';
}
