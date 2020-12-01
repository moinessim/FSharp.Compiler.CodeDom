
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "microsoft.netcore.platforms-5.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/microsoft.netcore.platforms.5.0.0.nupkg";
    sha256 = "0mwpwdflidzgzfx2dlpkvvnkgkr2ayaf0s80737h4wa35gaj11rc";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/microsoft.netcore.platforms-5.0/Microsoft.NETCore.Platforms";
    unzip -x "$src" -d "$out/lib/mono/packages/microsoft.netcore.platforms-5.0/Microsoft.NETCore.Platforms";
  '';
}
