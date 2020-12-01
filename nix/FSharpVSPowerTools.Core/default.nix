
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "fsharpvspowertools.core-2.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/fsharpvspowertools.core.2.3.0.nupkg";
    sha256 = "6eb9ad3746543b1151a5d688b1b2819357b9c1dcf0ff2b784e3f3d978fed3cf7";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/fsharpvspowertools.core-2.3.0/FSharpVSPowerTools.Core";
    unzip -x "$src" -d "$out/lib/mono/packages/fsharpvspowertools.core-2.3.0/FSharpVSPowerTools.Core";
  '';
}
