{lib, pkgs, ...}: let
  servers = [
    "clangd"
    "cssls"
    "gopls"
    "html"
    "jedi_language_server"
    # "lua_ls"
    "nixd"
    # "ocamllsp"
    "rust_analyzer"
    "svelte"
    "ts_ls"
  ];

  options = {
    noremap = true;
    silent = true;
  };

in{
  plugins.lspconfig.enable = true;
  lsp = {
    servers = lib.genAttrs servers (_: { enable = true; });

    keymaps = [
      {
        inherit options;
        key = "gR";
        mode = "n";
        action = "<CMD>Telescope lsp_references<CR>";
      }

      {
        inherit options;
        key = "gD";
        mode = "n";
        lspBufAction = "declaration";
      }

      {
        inherit options;
        key = "gd";
        mode = "n";
        action = "<CMD>Telescope lsp_definitions<CR>";
      }

      {
        inherit options;
        key = "gi";
        mode = "n";
        action = "<CMD>Telescope lsp_implementations<CR>";
      }

      {
        inherit options;
        key = "gt";
        mode = "n";
        action = "<CMD>Telescope lsp_type_implementations<CR>";
      }

      {
        inherit options;
        key = "<leader>ca";
        mode = [ "n" "v" ];
        lspBufAction = "code_action";
      }

      {
        inherit options;
        key = "<leader>rn";
        mode = "n";
        lspBufAction = "rename";
      }

      {
        inherit options;
        key = "<leader>D";
        mode = "n";
        action = "<CMD>Telescope diagnostics bufnr=0<CR>";
      }

      {
        inherit options;
        key = "<leader>d";
        mode = "n";
        action = lib.nixvim.mkRaw "vim.diagnostic.open_float";
      }

      {
        inherit options;
        key = "[d";
        mode = "n";
        action = lib.nixvim.mkRaw "vim.diagnostic.goto_prev";
      }

      {
        inherit options;
        key = "]d";
        mode = "n";
        action = lib.nixvim.mkRaw "vim.diagnostic.goto_next";
      }

      {
        inherit options;
        key = "K";
        mode = "n";
        lspBufAction = "hover";
      }

      {
        inherit options;
        key = "<leader>]lf";
        mode = "n";
        lspBufAction = "format";
      }
    ];
  };



}
