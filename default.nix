{
  pkgs ? import <nixpkgs> {},
}:
pkgs.stdenv.mkDerivation rec {
  pname = "redflake-plymouth";
  version = "0.0.1";

  src = ./src;

  installPhase = ''
    mkdir -p $out/share/plymouth/themes/redflake-plymouth
    cd redflake-plymouth
    cp *png redflake-plymouth.script redflake-plymouth.plymouth $out/share/plymouth/themes/redflake-plymouth
    chmod +x $out/share/plymouth/themes/redflake-plymouth/redflake-plymouth.plymouth $out/share/plymouth/themes/redflake-plymouth/redflake-plymouth.script
    sed -i "s@/usr/@$out/@" $out/share/plymouth/themes/redflake-plymouth/redflake-plymouth.plymouth
  '';
}
