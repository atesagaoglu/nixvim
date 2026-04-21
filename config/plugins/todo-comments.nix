{lib, ...}: {
    plugins.todo-comments = {
        enable = true;
        settings = {
            signs = false;
            keywords = {
                MAYBE = { icon = ""; color = "hint"; };
            };
            colors = {
				error = [ "DiagnosticError" "ErrorMsg" "#DC2626" ];
				warning = ["DiagnosticWarn" "WarningMsg" "#FBBF24"];
				info = ["DiagnosticInfo" "#2563EB"];
				hint = ["DiagnosticHint" "#10B981"];
				default = ["Identifier" "#7C3AED"];
				test = ["Identifier" "#FF00FF"];
            };
        };
    };

    keymaps = [
        {
            mode = "n";
            key = "]t";
            action = lib.nixvim.mkRaw "require(\"todo-comments\").jump_next";
        }

        {
            mode = "n";
            key = "[t";
            action = lib.nixvim.mkRaw "require(\"todo-comments\").jump_prev";
        }

        {
            mode = "n";
            key = "<leader>ft";
            action = "<CMD>TodoTelescope<CR>";
        }
    ];
}
