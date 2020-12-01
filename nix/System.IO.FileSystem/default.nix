
{ stdenv, fetchgit, fetchurl, unzip }:

stdenv.mkDerivation {
  name = "system.io.filesystem-4.3.0";

  src = fetchurl {
    url    = "https://api.nuget.org/packages/system.io.filesystem.4.3.0.nupkg";
    sha256 = "bcd2189ef95acae563d167d17d82a90eb843a6d961a75a4df026269557764d7c";
  };

  phases = [ "unpackPhase" ];

  buildInputs = [ unzip ];

  unpackPhase = ''
    mkdir -p "$out/lib/mono/packages/system.io.filesystem-4.3.0/System.IO.FileSystem";
    unzip -x "$src" -d "$out/lib/mono/packages/system.io.filesystem-4.3.0/System.IO.FileSystem";
  '';
}
