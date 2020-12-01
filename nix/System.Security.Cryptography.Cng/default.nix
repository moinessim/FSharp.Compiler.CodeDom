
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.security.cryptography.cng-5.0.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.security.cryptography.cng.5.0.0.nupkg";
    sha256 = "9ce24fdef76641a600d3b4c8dfbdcebd95fab96b211138a9be2e4aa4bee8131a";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.security.cryptography.cng-5.0.0/System.Security.Cryptography.Cng";
    unzip -x "$src" -d "$out/lib/mono/packages/system.security.cryptography.cng-5.0.0/System.Security.Cryptography.Cng";
  '';
}
