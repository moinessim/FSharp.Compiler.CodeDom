
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.runtime.compilerservices.unsafe-5.0.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.runtime.compilerservices.unsafe.5.0.0.nupkg";
    sha256 = "9de0114a92cf5333f110a849470a01ce13f12be70a222b4bc7b58162772c620a";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.runtime.compilerservices.unsafe-5.0.0/System.Runtime.CompilerServices.Unsafe";
    unzip -x "$src" -d "$out/lib/mono/packages/system.runtime.compilerservices.unsafe-5.0.0/System.Runtime.CompilerServices.Unsafe";
  '';
}
