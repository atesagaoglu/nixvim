{ config, pkgs, lib, ... }: {
  imports = [ 
    ./options.nix
    ./maps.nix
    ./autocmd.nix

    ./lsp.nix

    ./plugins
  ];
}
