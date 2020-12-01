
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.debian.8-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.debian.8-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "66ef74f32004daf2aefde096bbf12dc5e6346e94aeda383e50f186bd0212abe9";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.debian.8-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.debian.8-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.debian.8-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.debian.8-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
