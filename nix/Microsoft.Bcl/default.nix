
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "microsoft.bcl-1.1.10";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/microsoft.bcl.1.1.10.nupkg";
    sha256 = "754dc44fb18ab28491e4fc5cd197b89793c4aca42bba27ce672abab6ff41773f";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/microsoft.bcl-1.1.10/Microsoft.Bcl";
    unzip -x "$src" -d "$out/lib/mono/packages/microsoft.bcl-1.1.10/Microsoft.Bcl";
  '';
}
