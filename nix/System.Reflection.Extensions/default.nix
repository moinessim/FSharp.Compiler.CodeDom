
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.reflection.extensions-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.reflection.extensions.4.3.0.nupkg";
    sha256 = "98c38263351e9e3778ad621fabbcc85fd3c5624fdd694c85d00f25d616f27409";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.reflection.extensions-4.3.0/System.Reflection.Extensions";
    unzip -x "$src" -d "$out/lib/mono/packages/system.reflection.extensions-4.3.0/System.Reflection.Extensions";
  '';
}
