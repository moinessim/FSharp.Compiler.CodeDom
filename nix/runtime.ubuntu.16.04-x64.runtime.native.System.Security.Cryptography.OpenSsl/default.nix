
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.ubuntu.16.04-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.ubuntu.16.04-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "657b6f94ad52b647b6d8f9dcf17767a4f97dd1ebf4efc967a62b97c2d417a730";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.ubuntu.16.04-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.ubuntu.16.04-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.ubuntu.16.04-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.ubuntu.16.04-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
