
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.linq.expressions-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.linq.expressions.4.3.0.nupkg";
    sha256 = "fb7a6f85963bae2a7c1c26df7542f38e50bd14f645a58a10c6191cb859b6c24f";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.linq.expressions-4.3.0/System.Linq.Expressions";
    unzip -x "$src" -d "$out/lib/mono/packages/system.linq.expressions-4.3.0/System.Linq.Expressions";
  '';
}
