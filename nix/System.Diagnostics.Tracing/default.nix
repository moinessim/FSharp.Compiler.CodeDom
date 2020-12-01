
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.diagnostics.tracing-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.diagnostics.tracing.4.3.0.nupkg";
    sha256 = "8421136691c719584f62f6f80b47e1e33b3ef33bf818fa22c5a8242d98e96bd4";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.diagnostics.tracing-4.3.0/System.Diagnostics.Tracing";
    unzip -x "$src" -d "$out/lib/mono/packages/system.diagnostics.tracing-4.3.0/System.Diagnostics.Tracing";
  '';
}
