
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.io.filesystem.primitives-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.io.filesystem.primitives.4.3.0.nupkg";
    sha256 = "2cc9df83c5706afb3d70c9eaf67347f085ad02d49f934fc5cb8b3846df6bd648";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.io.filesystem.primitives-4.3.0/System.IO.FileSystem.Primitives";
    unzip -x "$src" -d "$out/lib/mono/packages/system.io.filesystem.primitives-4.3.0/System.IO.FileSystem.Primitives";
  '';
}
