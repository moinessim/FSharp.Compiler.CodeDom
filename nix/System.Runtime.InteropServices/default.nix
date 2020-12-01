
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.runtime.interopservices-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.runtime.interopservices.4.3.0.nupkg";
    sha256 = "f2c0c7f965097c247eedee277e97ed8fffa5b2d122662c56501b9e476ce61e02";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.runtime.interopservices-4.3.0/System.Runtime.InteropServices";
    unzip -x "$src" -d "$out/lib/mono/packages/system.runtime.interopservices-4.3.0/System.Runtime.InteropServices";
  '';
}
