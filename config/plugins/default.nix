/*
    TODO: Missing plugins
    conform
    gitsigns
    harpoon ? (no)
    nvim-lint
*/

{lib, ...}: let
    # list of default config plugins
    defaultConfigPlugins = [
        "nvim-autopairs"
        "comment"
        "guess-indent"
        "colorizer"
        "nvim-surround"
        "ts-autotag"
        "rainbow-delimiters"
    ];

    # plugins not on nixvim or nixpkgs
    vimPackPlugins = [
        "https://github.com/Aasim-A/scrollEOF.nvim"
    ];

    genLuaTable = l:
        "{${lib.concatStringsSep ",\n"
        (map (s: "\"${s}\"") l)
    }}";
in{

    # not worth having separate files for these plugins.
    plugins =
        (lib.genAttrs defaultConfigPlugins (_: { enable = true; }))
        // {
            colorizer = {
                enable = true;
                settings.user_default_options.names = false;
            };

            gitsigns = {
                enable = true;
                settings = {
                    numhl = true;
                    signcolumn = false;
                };
            };
        };

    extraConfigLua = ''
        vim.pack.add(${vimPackPlugins |> genLuaTable})

        require('scrollEOF').setup()
    '';

    imports = [
        ./blink.nix
        ./oil.nix
        ./treesitter.nix
        ./telescope.nix
        ./lualine.nix
        ./trouble.nix
        ./todo-comments.nix
    ];

}
