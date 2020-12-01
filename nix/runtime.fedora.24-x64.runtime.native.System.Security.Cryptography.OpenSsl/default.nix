
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.fedora.24-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.fedora.24-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "85e10f089aa59f07caf932ea762d0807b09c3aa3c743eea3a8a24b49f5341ac7";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.fedora.24-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.fedora.24-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.fedora.24-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.fedora.24-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
