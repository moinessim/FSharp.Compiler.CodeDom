
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.console-4.3.1";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.console.4.3.1.nupkg";
    sha256 = "eaf823481a74ac1a69e6a7290961cd552509073462827d61f1c764e10ef994dc";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.console-4.3.1/System.Console";
    unzip -x "$src" -d "$out/lib/mono/packages/system.console-4.3.1/System.Console";
  '';
}
