
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.fedora.23-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.fedora.23-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "726365cdebd7b9b35ff2f4f8dd7a5adaeb54d544182943377db6b2c61a6705e9";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.fedora.23-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.fedora.23-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.fedora.23-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.fedora.23-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
