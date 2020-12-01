
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.threading.timer-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.threading.timer.4.3.0.nupkg";
    sha256 = "a6686c96685084fdf64d66c1ce82132d9e01a0e441a98936e4e59baeed38a7db";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.threading.timer-4.3.0/System.Threading.Timer";
    unzip -x "$src" -d "$out/lib/mono/packages/system.threading.timer-4.3.0/System.Threading.Timer";
  '';
}
