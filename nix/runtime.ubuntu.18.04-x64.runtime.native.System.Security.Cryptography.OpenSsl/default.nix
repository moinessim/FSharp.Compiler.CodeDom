
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.ubuntu.18.04-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.ubuntu.18.04-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "ce11b56e6f108f52385ee620d38ee9dde148dfa42b06a5464536fe810a02446f";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.ubuntu.18.04-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.ubuntu.18.04-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.ubuntu.18.04-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.ubuntu.18.04-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
