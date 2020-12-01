
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "microsoft.netcore.targets-5.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/microsoft.netcore.targets.5.0.0.nupkg";
    sha256 = "0z3qyv7qal5irvabc8lmkh58zsl42mrzd1i0sssvzhv4q4kl3cg6";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/microsoft.netcore.targets-5.0/Microsoft.NETCore.Targets";
    unzip -x "$src" -d "$out/lib/mono/packages/microsoft.netcore.targets-5.0/Microsoft.NETCore.Targets";
  '';
}
