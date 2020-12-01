
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "fsharp.compiler.service-2.0.0.6";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/fsharp.compiler.service.2.0.0.6.nupkg";
    sha256 = "9245019bb3fc902ab8e1044b079a5e9aa8c5223ce77e37b539b140edbb9aea6d";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/fsharp.compiler.service-2.0.0.6/FSharp.Compiler.Service";
    unzip -x "$src" -d "$out/lib/mono/packages/fsharp.compiler.service-2.0.0.6/FSharp.Compiler.Service";
  '';
}
