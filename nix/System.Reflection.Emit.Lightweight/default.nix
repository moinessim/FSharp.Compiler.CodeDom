
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.reflection.emit.lightweight-4.7.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.reflection.emit.lightweight.4.7.0.nupkg";
    sha256 = "5745b3fd45283481dd4c64bd7b54d1f3dbb9f33263a3fc0f516c3a55a5727255";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.reflection.emit.lightweight-4.7.0/System.Reflection.Emit.Lightweight";
    unzip -x "$src" -d "$out/lib/mono/packages/system.reflection.emit.lightweight-4.7.0/System.Reflection.Emit.Lightweight";
  '';
}
