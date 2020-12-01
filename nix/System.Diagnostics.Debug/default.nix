
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.diagnostics.debug-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.diagnostics.debug.4.3.0.nupkg";
    sha256 = "7e403bf528cf6d27a211cadb6d4b1bef4bbd07bc2a6ec74cf6cd4b9e82a3d203";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.diagnostics.debug-4.3.0/System.Diagnostics.Debug";
    unzip -x "$src" -d "$out/lib/mono/packages/system.diagnostics.debug-4.3.0/System.Diagnostics.Debug";
  '';
}
