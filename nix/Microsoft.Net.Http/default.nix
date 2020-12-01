
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "microsoft.net.http-2.2.29";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/microsoft.net.http.2.2.29.nupkg";
    sha256 = "bf4e09ff21b6046db8f625677f52410f6f051965284cc94b9a22e35686a8f970";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/microsoft.net.http-2.2.29/Microsoft.Net.Http";
    unzip -x "$src" -d "$out/lib/mono/packages/microsoft.net.http-2.2.29/Microsoft.Net.Http";
  '';
}
