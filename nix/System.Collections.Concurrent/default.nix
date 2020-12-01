
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.collections.concurrent-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.collections.concurrent.4.3.0.nupkg";
    sha256 = "28c6390df2670de22c6b5dc3a6abf237c36445e644300167966360955a052172";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.collections.concurrent-4.3.0/System.Collections.Concurrent";
    unzip -x "$src" -d "$out/lib/mono/packages/system.collections.concurrent-4.3.0/System.Collections.Concurrent";
  '';
}
