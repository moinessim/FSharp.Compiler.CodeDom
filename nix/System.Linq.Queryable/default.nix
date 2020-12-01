
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.linq.queryable-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.linq.queryable.4.3.0.nupkg";
    sha256 = "122a117b1867a52a086bde949f4b3214ef423fa9758cd697621a792e59da2d6e";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.linq.queryable-4.3.0/System.Linq.Queryable";
    unzip -x "$src" -d "$out/lib/mono/packages/system.linq.queryable-4.3.0/System.Linq.Queryable";
  '';
}
