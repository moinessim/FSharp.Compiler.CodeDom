
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.opensuse.13.2-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.opensuse.13.2-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "51515175fd409b66f06f6560bb9cd8fa9c7ad228d8676c202a53e9c50a53f103";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.opensuse.13.2-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.opensuse.13.2-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.opensuse.13.2-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.opensuse.13.2-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
