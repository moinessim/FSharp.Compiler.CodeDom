
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.security.cryptography.algorithms-4.3.1";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.security.cryptography.algorithms.4.3.1.nupkg";
    sha256 = "4253bfa69464fcec836070a2983f3aed102528839a922743d0808d3adeb75cd4";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.security.cryptography.algorithms-4.3.1/System.Security.Cryptography.Algorithms";
    unzip -x "$src" -d "$out/lib/mono/packages/system.security.cryptography.algorithms-4.3.1/System.Security.Cryptography.Algorithms";
  '';
}
