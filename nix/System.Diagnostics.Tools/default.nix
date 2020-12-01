
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.diagnostics.tools-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.diagnostics.tools.4.3.0.nupkg";
    sha256 = "8153afd522ba0297b415084256534e77d72f40a06f331457f4ad093d58bcc346";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.diagnostics.tools-4.3.0/System.Diagnostics.Tools";
    unzip -x "$src" -d "$out/lib/mono/packages/system.diagnostics.tools-4.3.0/System.Diagnostics.Tools";
  '';
}
