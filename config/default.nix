{ ... }:
{
  imports = [
    ./bufferline.nix
    ./colorschemes.nix
    ./keymaps.nix
    ./lualine.nix
    ./web-devicons.nix
    ./which-key.nix
    # ./snacks.nix
    ./toggleterm.nix
    # ./themes.nix
    ./neotree.nix
  ];

  config = {
    globals.mapleader = " ";
    opts = {
      number = true;
      # colorcolumn = "80";
      relativenumber = true;
      shiftwidth = 2;
      tabstop = 2;
      wrap = false;
      swapfile = false; # Undotree
      backup = false; # Undotree
      undofile = true;
      hlsearch = false;
      incsearch = true;
      termguicolors = true;
      scrolloff = 8;
      signcolumn = "yes";
      updatetime = 50;
      foldlevelstart = 99;
    };
  };
}
