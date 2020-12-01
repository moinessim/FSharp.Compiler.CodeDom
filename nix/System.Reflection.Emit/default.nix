
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.reflection.emit-4.7.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.reflection.emit.4.7.0.nupkg";
    sha256 = "170fc24910fec1a8c7d4ca9f292dd0fec22b507ec63782be17e0f1ebc50f3488";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.reflection.emit-4.7.0/System.Reflection.Emit";
    unzip -x "$src" -d "$out/lib/mono/packages/system.reflection.emit-4.7.0/System.Reflection.Emit";
  '';
}
