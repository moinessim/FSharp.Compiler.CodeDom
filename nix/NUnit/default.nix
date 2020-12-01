
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "nunit-2.6.4";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/nunit.2.6.4.nupkg";
    sha256 = "2a47eddd03bd4f95b0b2fc8f44d193da7baded14bb39602b0e3218c6fc00f2a5";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/nunit-2.6.4/NUnit";
    unzip -x "$src" -d "$out/lib/mono/packages/nunit-2.6.4/NUnit";
  '';
}
