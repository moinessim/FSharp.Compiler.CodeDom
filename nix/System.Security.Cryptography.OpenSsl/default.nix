
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.security.cryptography.openssl-5.0.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.security.cryptography.openssl.5.0.0.nupkg";
    sha256 = "ca9af0d52a644f6e71a47b061d73b94587de65afde6bb0b111d469e17ec65071";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.security.cryptography.openssl-5.0.0/System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/system.security.cryptography.openssl-5.0.0/System.Security.Cryptography.OpenSsl";
  '';
}
