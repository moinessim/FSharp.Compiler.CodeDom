
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.globalization.calendars-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.globalization.calendars.4.3.0.nupkg";
    sha256 = "b8d383d043951609d2d9f30abcc884b48f5a3b0d34f8f7f2fc7faab9c01094f7";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.globalization.calendars-4.3.0/System.Globalization.Calendars";
    unzip -x "$src" -d "$out/lib/mono/packages/system.globalization.calendars-4.3.0/System.Globalization.Calendars";
  '';
}
