
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.fedora.28-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.fedora.28-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "36bf1cdfedaeac6d1e3ededf16b920fe25a8202ca98a95de473f99c2cfdac9a3";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.fedora.28-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.fedora.28-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.fedora.28-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.fedora.28-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
