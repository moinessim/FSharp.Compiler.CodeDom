
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "fake-4.64.18";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/fake.4.64.18.nupkg";
    sha256 = "a75d2d9ffd59f242432924f439f20b77df67f35cb7ce7a14eb66e41971541fd5";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/fake-4.64.18/FAKE";
    unzip -x "$src" -d "$out/lib/mono/packages/fake-4.64.18/FAKE";
  '';
}
