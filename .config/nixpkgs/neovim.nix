{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    extraConfig = ''
      set nocompatible
      set nobackup
      set modelines=0
      set tabstop=2
      set softtabstop=2
      set expandtab
      set autoindent
      set smarttab
      set ttyfast
      set showcmd
      set wildmenu
      set lazyredraw
      set noerrorbells
      set visualbell t_vb=
      set mouse=a
      set number
      set ignorecase
      set smartcase
      set incsearch
      set showmatch
      set hlsearch
    '';
  };
}
