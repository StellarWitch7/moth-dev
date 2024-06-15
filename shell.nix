let
  nixpkgsVer = "24.05";
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-${nixpkgsVer}") { config = {}; overlays = []; };
in pkgs.mkShell {
  name = "moth-dev";

  buildInputs = with pkgs; [
    vsce
    nodejs
  ];
}
