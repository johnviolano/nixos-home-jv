{ stdenv, fetchgit }:
stdenv.mkDerivation
{
  name = "lscolors";
  src = fetchgit 
  {
    url = "https://github.com/trapd00r/LS_COLORS";
    rev = "63dc14cdf5e3d85407584b4edaf20efe661c5264";
    sha256 = "1cxa95qhg2x0az20rg19pc9larlgp1igl9w43bpbqqxs8m32qdka";
  };
  installPhase = 
  ''
    mkdir -p $out/share
    cp $src/LS_COLORS $out/share/LS_COLORS
  '';
}