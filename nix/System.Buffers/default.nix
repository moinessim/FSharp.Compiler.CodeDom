
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.buffers-4.5.1";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.buffers.4.5.1.nupkg";
    sha256 = "c30b3dd2c7e2f4cee4b823d692fd42118309b42ab1f5007f923d329a5b0d6b12";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.buffers-4.5.1/System.Buffers";
    unzip -x "$src" -d "$out/lib/mono/packages/system.buffers-4.5.1/System.Buffers";
  '';
}
