
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.runtime.handles-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.runtime.handles.4.3.0.nupkg";
    sha256 = "289e5a5e81a9079e98ebe89ea4191da71fc07da243022b71e2fae42ea47b826b";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.runtime.handles-4.3.0/System.Runtime.Handles";
    unzip -x "$src" -d "$out/lib/mono/packages/system.runtime.handles-4.3.0/System.Runtime.Handles";
  '';
}
