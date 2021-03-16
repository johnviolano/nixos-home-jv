{ pkgs, ...}:
let
#  lscolors = pkgs.callPackage ./lscolors.nix {};
in
{
  imports = [
    ./bash.nix
    ./git.nix
    ./neovim.nix    
    ./tmux.nix
  ];

  home.packages = [
    pkgs.htop
    pkgs.nodejs-12_x # for vscode remote
    pkgs.tree
    #lscolors
  ];

  services.syncthing.enable = true;
}
