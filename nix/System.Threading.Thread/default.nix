
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.threading.thread-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.threading.thread.4.3.0.nupkg";
    sha256 = "a4cb3a44d142de740e1b3f44a887325a63bc60b6aa6b2faafd075ee61a8f5d78";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.threading.thread-4.3.0/System.Threading.Thread";
    unzip -x "$src" -d "$out/lib/mono/packages/system.threading.thread-4.3.0/System.Threading.Thread";
  '';
}
