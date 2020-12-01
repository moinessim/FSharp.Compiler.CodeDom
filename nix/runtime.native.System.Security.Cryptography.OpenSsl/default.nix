
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "ae9da242c639765de3b7d427c373647b14eacca3414b128f1babadb1fe0a8344";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.native.system.security.cryptography.openssl-4.3.3/runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.native.system.security.cryptography.openssl-4.3.3/runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
