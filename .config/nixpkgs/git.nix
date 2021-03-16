{ pkgs, ... }:
{
  programs.git = {
    package = pkgs.gitAndTools.gitFull;
    enable = true;
    userName = "John Violano";
    userEmail = "jv.random@pm.me";

    # Replaces ~/.gitignore
    ignores = [
      ".cache/"
      ".DS_Store"
      ".idea/"
      "*.swp"
      "built-in-stubs.jar"
      "dumb.rdb"
      ".elixir_ls/"
      ".vscode/"
      "npm-debug.log"
      "shell.nix"
    ];

    # Global Git config
    extraConfig = {
      core = {
        editor = "vim";
        pager = "delta --dark";
        whitespace = "trailing-space,space-before-tab";
      };
    };
  };
}
