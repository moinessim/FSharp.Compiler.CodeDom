
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.net.webheadercollection-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.net.webheadercollection.4.3.0.nupkg";
    sha256 = "c2944fdc3ff6623a459aa53b438d8bffefe10a1115325c14d6c8f2b0656b4357";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.net.webheadercollection-4.3.0/System.Net.WebHeaderCollection";
    unzip -x "$src" -d "$out/lib/mono/packages/system.net.webheadercollection-4.3.0/System.Net.WebHeaderCollection";
  '';
}
