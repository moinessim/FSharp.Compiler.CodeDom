
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.opensuse.42.3-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.opensuse.42.3-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "5462fd9ef60230e1c0825e8aea7197fa58e1441722d0079fedb0192d2034bbe4";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.opensuse.42.3-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.opensuse.42.3-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.opensuse.42.3-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.opensuse.42.3-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
