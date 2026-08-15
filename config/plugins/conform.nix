{
  plugins.conform-nvim = {
    enable = true;
    settings = {

      format_on_save = {
        lsp_fallback = true;
        async = false;
        timeout_ms = 1000;
      };

      formatters_by_ft = {
        go = [
          "goimports"
          "gofmt"
        ];

        nix = [
          "nixfmt"
        ];

        "_" = [
          "trim_whitespace"
          "trim_newlines"
        ];

        javascript = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };

        javascriptreact = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };

        typescriptreact = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };

        rust = [
          "rustfmt"
        ];
      };
    };
  };
}
