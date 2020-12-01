
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.ubuntu.14.04-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.ubuntu.14.04-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "1d119746775d13c3b701a648a49b64e16324bde53a551975786959d7700a7b0a";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.ubuntu.14.04-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.ubuntu.14.04-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.ubuntu.14.04-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.ubuntu.14.04-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
