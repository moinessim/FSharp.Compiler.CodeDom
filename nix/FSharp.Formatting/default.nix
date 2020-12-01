
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "fsharp.formatting-2.14.4";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/fsharp.formatting.2.14.4.nupkg";
    sha256 = "673340fad3307feecc31e781909b12fe525c930dcf0519bac39680413a24fd30";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/fsharp.formatting-2.14.4/FSharp.Formatting";
    unzip -x "$src" -d "$out/lib/mono/packages/fsharp.formatting-2.14.4/FSharp.Formatting";
  '';
}
