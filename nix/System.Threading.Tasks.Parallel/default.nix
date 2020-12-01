
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.threading.tasks.parallel-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.threading.tasks.parallel.4.3.0.nupkg";
    sha256 = "f07daf466b27dbd30d7cc9827882f9bc77db335f6359a2c328d2f30e89c223e7";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.threading.tasks.parallel-4.3.0/System.Threading.Tasks.Parallel";
    unzip -x "$src" -d "$out/lib/mono/packages/system.threading.tasks.parallel-4.3.0/System.Threading.Tasks.Parallel";
  '';
}
