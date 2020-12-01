
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "fsharp.core-4.5.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/fsharp.core.4.5.0.nupkg";
    sha256 = "efe07ef2bb26fdd30abcd06dcbccf9a81fa43b1330533131cb4174e3133cf2c9";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/fsharp.core-4.5.0/FSharp.Core";
    unzip -x "$src" -d "$out/lib/mono/packages/fsharp.core-4.5.0/FSharp.Core";
  '';
}
