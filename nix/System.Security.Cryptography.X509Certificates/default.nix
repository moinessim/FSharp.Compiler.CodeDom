
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.security.cryptography.x509certificates-4.3.2";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.security.cryptography.x509certificates.4.3.2.nupkg";
    sha256 = "b24680b48aa291b06fd79f3a1287128b083e42a06cf6de6329402bfd06fdca2d";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.security.cryptography.x509certificates-4.3.2/System.Security.Cryptography.X509Certificates";
    unzip -x "$src" -d "$out/lib/mono/packages/system.security.cryptography.x509certificates-4.3.2/System.Security.Cryptography.X509Certificates";
  '';
}
