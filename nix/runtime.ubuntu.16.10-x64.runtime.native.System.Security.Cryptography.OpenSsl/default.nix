
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.ubuntu.16.10-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.ubuntu.16.10-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "49ec992ccbfd185c6fb7d6e599f4c0b9670c35cf9d2f4c613029b6c14b0754ad";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.ubuntu.16.10-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.ubuntu.16.10-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.ubuntu.16.10-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.ubuntu.16.10-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
