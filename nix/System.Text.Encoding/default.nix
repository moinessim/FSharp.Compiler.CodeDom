
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.text.encoding-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.text.encoding.4.3.0.nupkg";
    sha256 = "19cb475462d901afebaa404d86c0469ec89674acafe950ee6d8a4692e3a404b8";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.text.encoding-4.3.0/System.Text.Encoding";
    unzip -x "$src" -d "$out/lib/mono/packages/system.text.encoding-4.3.0/System.Text.Encoding";
  '';
}
