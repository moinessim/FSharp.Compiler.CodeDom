
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "nunit.runners-2.6.4";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/nunit.runners.2.6.4.nupkg";
    sha256 = "c975ace74cee180b569ad524c5118d257081510856a0bcd2469cb2e4d9877a9a";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/nunit.runners-2.6.4/NUnit.Runners";
    unzip -x "$src" -d "$out/lib/mono/packages/nunit.runners-2.6.4/NUnit.Runners";
  '';
}
