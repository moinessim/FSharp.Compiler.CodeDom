
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.net.http-4.3.4";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.net.http.4.3.4.nupkg";
    sha256 = "14ca14d0aee794f2f1a038eed0d2f6d568e581af46a67028423b05845618b74d";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.net.http-4.3.4/System.Net.Http";
    unzip -x "$src" -d "$out/lib/mono/packages/system.net.http-4.3.4/System.Net.Http";
  '';
}
