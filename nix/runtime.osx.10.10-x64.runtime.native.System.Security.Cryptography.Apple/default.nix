
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.osx.10.10-x64.runtime.native.system.security.cryptography.apple-4.3.1";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.osx.10.10-x64.runtime.native.system.security.cryptography.apple.4.3.1.nupkg";
    sha256 = "279447cd221f52cd34d4db18f36f995e7d1922abb1f9a2ef63bb83b978d177c5";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.osx.10.10-x64.runtime.native.system.security.cryptography.apple-4.3.1/runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.Apple";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.osx.10.10-x64.runtime.native.system.security.cryptography.apple-4.3.1/runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.Apple";
  '';
}
