
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.linq-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.linq.4.3.0.nupkg";
    sha256 = "479ba248bde5e9add7ad74922fa8f3faafcf732550cc4001ca2b9764d4aa0ff0";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.linq-4.3.0/System.Linq";
    unzip -x "$src" -d "$out/lib/mono/packages/system.linq-4.3.0/System.Linq";
  '';
}
