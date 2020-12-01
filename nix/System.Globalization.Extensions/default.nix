
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.globalization.extensions-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.globalization.extensions.4.3.0.nupkg";
    sha256 = "9a6256036ed3d06455b853fdfec8fee13ad1e06256af33489363c3adbafb4509";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.globalization.extensions-4.3.0/System.Globalization.Extensions";
    unzip -x "$src" -d "$out/lib/mono/packages/system.globalization.extensions-4.3.0/System.Globalization.Extensions";
  '';
}
