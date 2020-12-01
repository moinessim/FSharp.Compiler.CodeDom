
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.native.system.security.cryptography.apple-4.3.1";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.native.system.security.cryptography.apple.4.3.1.nupkg";
    sha256 = "32dd90023347e672a7c296f2a147b63be127f7b08ff381101684b70a49985c03";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.native.system.security.cryptography.apple-4.3.1/runtime.native.System.Security.Cryptography.Apple";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.native.system.security.cryptography.apple-4.3.1/runtime.native.System.Security.Cryptography.Apple";
  '';
}
