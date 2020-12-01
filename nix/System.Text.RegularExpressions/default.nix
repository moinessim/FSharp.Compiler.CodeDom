
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.text.regularexpressions-4.3.1";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.text.regularexpressions.4.3.1.nupkg";
    sha256 = "0f1b046749e73e8cf20b55b5eb8cab3145f09c07474a14bd127ec8983fc624c3";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.text.regularexpressions-4.3.1/System.Text.RegularExpressions";
    unzip -x "$src" -d "$out/lib/mono/packages/system.text.regularexpressions-4.3.1/System.Text.RegularExpressions";
  '';
}
