
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.net.primitives-4.3.1";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.net.primitives.4.3.1.nupkg";
    sha256 = "a880858d0a3915c49f35279bf1738cc00e5a5203fe3ced227653b91d5a60bac3";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.net.primitives-4.3.1/System.Net.Primitives";
    unzip -x "$src" -d "$out/lib/mono/packages/system.net.primitives-4.3.1/System.Net.Primitives";
  '';
}
