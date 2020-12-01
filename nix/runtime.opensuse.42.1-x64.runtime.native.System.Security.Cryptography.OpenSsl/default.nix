
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.opensuse.42.1-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.opensuse.42.1-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "6d35285e7510d325083bb3c9a124aa3e0a907b75689644ab65e42d5dbe4e2e35";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.opensuse.42.1-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.opensuse.42.1-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.opensuse.42.1-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.opensuse.42.1-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
