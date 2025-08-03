{ ... }:
{
  imports = [
    ./lspconfig
    ./mini
    ./snacks
    ./which-key

    ./bufferline.nix
    ./colorschemes.nix
    ./keymaps.nix
    ./lualine.nix
    ./toggleterm.nix
    ./web-devicons.nix
  ];

  config = {
    globals.mapleader = " ";
    opts = import ./options.nix;
  };
}
