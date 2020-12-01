
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.reflection.emit.ilgeneration-4.7.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.reflection.emit.ilgeneration.4.7.0.nupkg";
    sha256 = "1949d0786a3f0edbd9550a459c4486abb949723077d3f2a70d8eca7761bf1251";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.reflection.emit.ilgeneration-4.7.0/System.Reflection.Emit.ILGeneration";
    unzip -x "$src" -d "$out/lib/mono/packages/system.reflection.emit.ilgeneration-4.7.0/System.Reflection.Emit.ILGeneration";
  '';
}
