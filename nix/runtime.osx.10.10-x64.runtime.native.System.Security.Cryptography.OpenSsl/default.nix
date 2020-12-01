
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.osx.10.10-x64.runtime.native.system.security.cryptography.openssl-4.3.3";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.osx.10.10-x64.runtime.native.system.security.cryptography.openssl.4.3.3.nupkg";
    sha256 = "ef8d07da8d45dc73fe039867870b7509c983061fb80988ba95dd80feb1436d63";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.osx.10.10-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.OpenSsl";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.osx.10.10-x64.runtime.native.system.security.cryptography.openssl-4.3.3/runtime.osx.10.10-x64.runtime.native.System.Security.Cryptography.OpenSsl";
  '';
}
