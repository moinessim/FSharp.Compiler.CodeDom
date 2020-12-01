
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.threading.tasks-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.threading.tasks.4.3.0.nupkg";
    sha256 = "679ad77c9d445e9dc6df620a646899ea4a0c8d1bb49fc0b5346af0a5d21e9f8c";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.threading.tasks-4.3.0/System.Threading.Tasks";
    unzip -x "$src" -d "$out/lib/mono/packages/system.threading.tasks-4.3.0/System.Threading.Tasks";
  '';
}
