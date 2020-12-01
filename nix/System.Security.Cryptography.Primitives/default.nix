
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.security.cryptography.primitives-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.security.cryptography.primitives.4.3.0.nupkg";
    sha256 = "7e7162ec1dd29d58f96be05b8179db8e718dbd6ac2114e87a7fc23b235b3df5f";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.security.cryptography.primitives-4.3.0/System.Security.Cryptography.Primitives";
    unzip -x "$src" -d "$out/lib/mono/packages/system.security.cryptography.primitives-4.3.0/System.Security.Cryptography.Primitives";
  '';
}
