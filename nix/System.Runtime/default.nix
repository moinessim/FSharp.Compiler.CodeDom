
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.runtime-4.3.1";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.runtime.4.3.1.nupkg";
    sha256 = "47d4faf00cd2d4f249eefe80473f6fa3cf2928bd5d5aa2ce00d838a64423900d";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.runtime-4.3.1/System.Runtime";
    unzip -x "$src" -d "$out/lib/mono/packages/system.runtime-4.3.1/System.Runtime";
  '';
}
