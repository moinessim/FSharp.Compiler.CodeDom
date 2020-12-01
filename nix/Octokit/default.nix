
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "octokit-0.24.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/octokit.0.24.0.nupkg";
    sha256 = "3ab2dd22ad781a6d3469c8b9642b69c4f86b2a6674f53aaa4252e5b88bcf114b";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/octokit-0.24.0/Octokit";
    unzip -x "$src" -d "$out/lib/mono/packages/octokit-0.24.0/Octokit";
  '';
}
