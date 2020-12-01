
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.threading-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.threading.4.3.0.nupkg";
    sha256 = "643437751e29cd5c266aa060e2169c65a55e9d0ff7c8017fb95ec15d95e38967";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.threading-4.3.0/System.Threading";
    unzip -x "$src" -d "$out/lib/mono/packages/system.threading-4.3.0/System.Threading";
  '';
}
