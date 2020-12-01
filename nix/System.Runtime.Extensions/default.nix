
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.runtime.extensions-4.3.1";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.runtime.extensions.4.3.1.nupkg";
    sha256 = "c6597f005eac175b28435e69ac03c8547487ebd0a22f813d3875431f2ae6f3af";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.runtime.extensions-4.3.1/System.Runtime.Extensions";
    unzip -x "$src" -d "$out/lib/mono/packages/system.runtime.extensions-4.3.1/System.Runtime.Extensions";
  '';
}
