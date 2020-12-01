
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.reflection.typeextensions-4.7.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.reflection.typeextensions.4.7.0.nupkg";
    sha256 = "184b42197c2d3a79187a3495f937e5f83ab21aae634d4695c8bf5e32ea4c1c13";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.reflection.typeextensions-4.7.0/System.Reflection.TypeExtensions";
    unzip -x "$src" -d "$out/lib/mono/packages/system.reflection.typeextensions-4.7.0/System.Reflection.TypeExtensions";
  '';
}
