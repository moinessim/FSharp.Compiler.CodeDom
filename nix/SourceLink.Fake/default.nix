
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "sourcelink.fake-1.1.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/sourcelink.fake.1.1.0.nupkg";
    sha256 = "597459d712f07c1532da1b64255d82d429375041da051faa43ee36738530393e";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/sourcelink.fake-1.1.0/SourceLink.Fake";
    unzip -x "$src" -d "$out/lib/mono/packages/sourcelink.fake-1.1.0/SourceLink.Fake";
  '';
}
