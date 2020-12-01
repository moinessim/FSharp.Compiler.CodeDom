
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.rhel.7-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.rhel.7-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "5e4e76d53ea9a429275beb232d95061d620dc1b79df7417a39b6111f8190e7cb";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.rhel.7-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.rhel.7-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.rhel.7-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.rhel.7-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
