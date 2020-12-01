
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.io-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.io.4.3.0.nupkg";
    sha256 = "aeeca74077a414fe703eb0e257284d891217799fc8f4da632b9a54f873c38916";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.io-4.3.0/System.IO";
    unzip -x "$src" -d "$out/lib/mono/packages/system.io-4.3.0/System.IO";
  '';
}
