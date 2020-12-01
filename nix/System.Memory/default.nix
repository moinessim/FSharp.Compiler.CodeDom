
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.memory-4.5.4";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.memory.4.5.4.nupkg";
    sha256 = "dec0847f33b8823e4260672d97d657411461c00ada3107ec7bbcb32a845eeb91";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.memory-4.5.4/System.Memory";
    unzip -x "$src" -d "$out/lib/mono/packages/system.memory-4.5.4/System.Memory";
  '';
}
