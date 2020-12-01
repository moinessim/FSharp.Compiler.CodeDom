
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.fedora.27-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.fedora.27-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "8c986e3cd983a6259842668726fc11748b7d87eb8b490736abaab4773870f0ae";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.fedora.27-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.fedora.27-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.fedora.27-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.fedora.27-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
