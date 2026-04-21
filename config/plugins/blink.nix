{pkgs, lib, ...}: {
  #dependencies
  plugins.friendly-snippets.enable = true;
  plugins.luasnip = {
    enable = true;
    fromVscode = [
      { paths = "${pkgs.vimPlugins.friendly-snippets}"; }
    ];
  };

  plugins.blink-cmp = {
    enable = true;
    settings = {
      sources.default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
      ];
      keymap = {
        preset = "none";
        "<C-k>" = [ "select_prev" "fallback" ];
        "<C-J>" = [ "select_next" "fallback" ];
        "<C-l>" = [ "snippet_forward" "fallback" ];
        "<C-h>" = [ "snippet_backward" "fallback" ];
        "<C-space>" = [ "show" "show_documentation" "hide_documentation" ];
        "<CR>" = [ "accept" "fallback" ];
      };
      signature.enabled = true;
      completion = {
        documentation = {
          auto_show = true;
          auto_show_delay_ms = 1500;
          window = {
            border = "none";
          };
        };
        list.selection.preselect = false;

        menu = {
          border = "none";
          draw = {
            columns = lib.nixvim.mkRaw ''
              {
                { "kind_icon", gap = 2 },
                { "label", "label_description", gap = 1 },
                { "kind" },
              }
            '';
          };
        };
      };
      appearance.kind_icons = {
        Text = "󰉿";
        Method = "󰊕";
        Function = "󰊕";
        Constructor = "󰒓";
        Field = "󰜢";
        Variable = "󰆦";
        Property = "󰖷";
        Class = "󱡠";
        Interface = "󱡠";
        Struct = "󱡠";
        Module = "󰅩";
        Unit = "󰪚";
        Value = "󰦨";
        Enum = "󰦨";
        EnumMember = "󰦨";
        Keyword = "󰻾";
        Constant = "󰏿";
        Snippet = "󱄽";
        Color = "󰏘";
        File = "󰈔";
        Reference = "󰬲";
        Folder = "󰉋";
        Event = "󱐋";
        Operator = "󰪚";
        TypeParameter = "󰬛";
      };
    };
  };
}
