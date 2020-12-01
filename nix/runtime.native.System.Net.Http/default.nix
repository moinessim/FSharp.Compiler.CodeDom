
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.native.system.net.http-4.3.1";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.native.system.net.http.4.3.1.nupkg";
    sha256 = "4bc9a616992c8681b50fa560a6a57a5259a3af5941634e4812fba4deb285ca46";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.native.system.net.http-4.3.1/runtime.native.System.Net.Http";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.native.system.net.http-4.3.1/runtime.native.System.Net.Http";
  '';
}
