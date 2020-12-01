
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.net.requests-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.net.requests.4.3.0.nupkg";
    sha256 = "2a8d9199cce66204d11ef02f9636c260c1ac0eefe411f7c0fd184c8c79b59f5d";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.net.requests-4.3.0/System.Net.Requests";
    unzip -x "$src" -d "$out/lib/mono/packages/system.net.requests-4.3.0/System.Net.Requests";
  '';
}
