
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.reflection-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.reflection.4.3.0.nupkg";
    sha256 = "35049946964bbed3d60e5be6308746c5c56ec949f0f76654468d215ec12c8576";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.reflection-4.3.0/System.Reflection";
    unzip -x "$src" -d "$out/lib/mono/packages/system.reflection-4.3.0/System.Reflection";
  '';
}
