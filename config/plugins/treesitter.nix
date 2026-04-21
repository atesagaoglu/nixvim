{
    plugins.treesitter = {
        enable = true;
        indent.enable = true;
        nixvimInjections = true;
        settings = {
            highlight = {
                enable = true;
                additional_vim_regex_highlighting = false;
            };
        };
    };
}
