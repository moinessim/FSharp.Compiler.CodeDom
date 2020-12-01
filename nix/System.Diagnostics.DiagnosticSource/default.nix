
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.diagnostics.diagnosticsource-5.0.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.diagnostics.diagnosticsource.5.0.0.nupkg";
    sha256 = "ea65b737a16f71d347fe9079f2997ea4548219683268fe217d5b42fd23160d5e";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.diagnostics.diagnosticsource-5.0.0/System.Diagnostics.DiagnosticSource";
    unzip -x "$src" -d "$out/lib/mono/packages/system.diagnostics.diagnosticsource-5.0.0/System.Diagnostics.DiagnosticSource";
  '';
}
