{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    escapeTime = 20;
    baseIndex = 1;
    keyMode = "vi";

    # Replaces ~/.tmux.conf
    extraConfig = ''
      new-session -n $HOST
      set -g default-terminal "screen-256color"
      set -g history-limit 10000

      # binds
      set -g prefix `
      unbind C-b
      bind ` send-prefix
      bind r source-file ~/.tmux.conf \; display "Tmux config reloaded"
      bind c new-window -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"
      bind | split-window -h -c "#{pane_current_path}"
      bind T swap-window -t 0
      bind P swap-pane -t 0
      bind h select-pane -L
      bind j select-pane -D
      bind k select-pane -U
      bind l select-pane -R
      bind -n C-o select-pane -t :.+
      bind -n C-h select-window -t :-
      bind -n C-l select-window -t :+
      bind H resize-pane -L 5
      bind J resize-pane -D 5
      bind K resize-pane -U 5
      bind L resize-pane -R 5

      # status bar
      setw -g automatic-rename on
      setw -g monitor-activity off
      set -g status on
      set -g status-interval 5
      set -g status-justify centre
      set -g status-position top
      set -g visual-activity off
      set -g status-bg white
      set -g status-fg black

      # vim
      setw -g mode-keys vi
      bind -T vi-copy v send -X begin-selection
      bind -T vi-copy y send -X copy-selection
      bind P paste-buffer
    '';
  };
}
