
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "runtime.native.system-4.3.1";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/runtime.native.system.4.3.1.nupkg";
    sha256 = "133c678bcfff928e17e7552b7f3fdcadbd3e76a59fab8e9e66f572b744b4b6ca";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/runtime.native.system-4.3.1/runtime.native.System";
    unzip -x "$src" -d "$out/lib/mono/packages/runtime.native.system-4.3.1/runtime.native.System";
  '';
}
