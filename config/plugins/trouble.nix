{
    plugins.trouble.enable = true;

    keymaps = [
        {
            mode = "n";
            key = "<leader>xx";
            action = "<CMD>Trouble diagnostics toggle<CR>";
        }

        {
            mode = "n";
            key = "<leader>xX";
            action = "<CMD>Trouble diagnostics toggle filter.buf=0<CR>";
        }

        {
            mode = "n";
            key = "<leader>xa";
            action = "<CMD>Trouble all<CR>";
        }

        {
            mode = "n";
            key = "<leader>xs";
            action = "<CMD>Trouble symbols toggle focus=false<CR>";
        }

        {
            mode = "n";
            key = "<leader>xr";
            action = "<CMD>Trouble lsp_references toggle focus=false<CR>";
        }

        {
            mode = "n";
            key = "<leader>xL";
            action = "<CMD>Trouble lsp toggle focus=false win.position=right<CR>";
        }

        {
            mode = "n";
            key = "<leader>xl";
            action = "<CMD>Trouble loclist toggle<CR>";
        }

        {
            mode = "n";
            key = "<leader>xQ";
            action = "<CMD>Trouble qflist toggle<CR>";
        }

    ];
}
