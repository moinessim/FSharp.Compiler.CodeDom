
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.debian.9-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.debian.9-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "3dc68ef505ec04a0468799e3a4cbec3dbe7a3ac84bb1baa56f733b409636f58e";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.debian.9-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.debian.9-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.debian.9-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.debian.9-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
