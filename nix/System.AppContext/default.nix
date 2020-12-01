
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.appcontext-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.appcontext.4.3.0.nupkg";
    sha256 = "ca0f792cd40ec05940d6d5b15dd42457226a4f8027a0373e0029ab36fcc68998";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.appcontext-4.3.0/System.AppContext";
    unzip -x "$src" -d "$out/lib/mono/packages/system.appcontext-4.3.0/System.AppContext";
  '';
}
