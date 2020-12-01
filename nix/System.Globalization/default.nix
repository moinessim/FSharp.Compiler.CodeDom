
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.globalization-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.globalization.4.3.0.nupkg";
    sha256 = "71a2f4a51985484b1aa1e65e58de414d0b46ac0b5a40fc058bc60e64f646e6b2";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.globalization-4.3.0/System.Globalization";
    unzip -x "$src" -d "$out/lib/mono/packages/system.globalization-4.3.0/System.Globalization";
  '';
}
