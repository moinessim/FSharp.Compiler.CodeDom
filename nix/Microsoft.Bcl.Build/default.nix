
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "microsoft.bcl.build-1.0.21";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/microsoft.bcl.build.1.0.21.nupkg";
    sha256 = "576a2a4aed32ef23f38712a10f3b8c7107cd8d63998aeca9b75442d5798443ee";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/microsoft.bcl.build-1.0.21/Microsoft.Bcl.Build";
    unzip -x "$src" -d "$out/lib/mono/packages/microsoft.bcl.build-1.0.21/Microsoft.Bcl.Build";
  '';
}
