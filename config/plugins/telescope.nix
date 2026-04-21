{lib, ...}: let
    genAction = p: lib.nixvim.mkRaw "require(\"telescope.builtin\").${p}";
in {
    plugins.telescope = {
        enable = true;
        settings = {
            defaults = {
                sorting_strategy = "ascending";
                layout_strategy = "bottom_pane";
                layout_config = {
                    height = 25;
                };
                border = true;
				borderchars = {
					prompt = [ "─" " " " " " " "─" "─" " " " " ];
					results = [ " " ];
					preview = [ "─" "│" "─" "│" "╭" "╮" "╯" "╰" ];
				};
            };
            pickers = {
                buffers = {
                    initial_mode = "normal";
                    mappings = {
                        i = {
                            "dd" = { __raw = "require(\"telescope.actions\").delete_buffer"; };
                        };
                    };
                };

                registers.initial_mode = "normal";
                marks.initial_mode = "normal";

                diagnostics = {
                    initial_mode = "normal";
                    wrap_results = true;
                };
                find_files.file_ignore_patterns = [ "node%_modules/.*" ];
                live_grep.file_ignore_patterns = [ "node%_modules/.*" ];
            };
        };
    };

    keymaps = [
        {
            mode = "n";
            key = "<leader>ff";
            action = genAction "find_files";
        }

        {
            mode = "n";
            key = "<leader>fv";
            action = genAction "git_files";
        }

        {
            mode = "n";
            key = "<leader>fg";
            action = genAction "live_grep";
        }

        {
            mode = "n";
            key = "<leader>fb";
            action = genAction "buffers";
        }

        {
            mode = "n";
            key = "<leader>fr";
            action = genAction "registers";
        }


        {
            mode = "n";
            key = "<leader>fm";
            action = genAction "marks";
        }

        {
            mode = "n";
            key = "<leader>fa";
            action = genAction "builtin";
        }
    ];

}
