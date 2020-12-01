
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.threading.threadpool-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.threading.threadpool.4.3.0.nupkg";
    sha256 = "c16d1076fb2c46868e7d02dacd31929f0613bab13847c1710f1ef4a5890bfa08";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.threading.threadpool-4.3.0/System.Threading.ThreadPool";
    unzip -x "$src" -d "$out/lib/mono/packages/system.threading.threadpool-4.3.0/System.Threading.ThreadPool";
  '';
}
