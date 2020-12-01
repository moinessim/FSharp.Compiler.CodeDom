
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.security.cryptography.csp-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.security.cryptography.csp.4.3.0.nupkg";
    sha256 = "a1e7dd4d4fd9d8f594f6795ab7cba24431aafcf199a123d182430bd75a66bcf4";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.security.cryptography.csp-4.3.0/System.Security.Cryptography.Csp";
    unzip -x "$src" -d "$out/lib/mono/packages/system.security.cryptography.csp-4.3.0/System.Security.Cryptography.Csp";
  '';
}
