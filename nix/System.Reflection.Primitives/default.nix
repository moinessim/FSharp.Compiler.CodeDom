
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.reflection.primitives-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.reflection.primitives.4.3.0.nupkg";
    sha256 = "e68830581e2f9504e5de38e4d718e7886da8cdb1488d94cbf6e834bac650b813";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.reflection.primitives-4.3.0/System.Reflection.Primitives";
    unzip -x "$src" -d "$out/lib/mono/packages/system.reflection.primitives-4.3.0/System.Reflection.Primitives";
  '';
}
