
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.security.cryptography.encoding-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.security.cryptography.encoding.4.3.0.nupkg";
    sha256 = "62e81ef3d37a33e35c6e572f5cc7b21d9ea46437f006fdcb3cc0e217c1e126cb";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.security.cryptography.encoding-4.3.0/System.Security.Cryptography.Encoding";
    unzip -x "$src" -d "$out/lib/mono/packages/system.security.cryptography.encoding-4.3.0/System.Security.Cryptography.Encoding";
  '';
}
