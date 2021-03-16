{ pkgs, ... }:
{
  programs.bash = {
    enable = true;
    historyControl = [ "ignoredups" ];
    initExtra = 
    ''
      #eval $(dircolors ${pkgs.lscolors}/share/LS_COLORS)
      export EDITOR=nvim
      set -o vi
      if [ ! "$TMUX" ]; then
        tmux a
      fi
    '';
  };
}
