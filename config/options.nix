{config, lib, ...}: {
  colorschemes.gruvbox.enable = true;
  colorscheme = "gruvbox";

  globals = {
    mapleader = " ";
    maplocalleader = "\\";

    loaded_netrw = 1;
    loaded_netrwPlugin = 1;
  };

  opts = {
    number = true;
    relativenumber = true;

    wrap = false;
    tabstop = 2;
    shiftwidth = 0;
    smartindent = true;
    expandtab = true;

    hlsearch = false;
    incsearch = true;

    cursorline = true;

    termguicolors = true;
    background = "dark";

    clipboard = "unnamedplus";
    swapfile = false;

    scrolloff = 8;

    undodir = lib.nixvim.mkRaw "os.getenv(\"HOME\") .. \"/.vim/undodir\"";
    undofile = true;

    signcolumn = "auto";

    mouse = "";

    showtabline = 0;
  };
}
