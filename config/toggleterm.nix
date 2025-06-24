{ pkgs, ... }:
{
  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "horizontal";
      open_mapping = "[[<c-/>]]";
      autochdir = true;
      auto_scroll = true;
      close_on_exit = true;
      insert_mappings = true;
      shell = "fish";
    };
  };
  keymaps = [
    {
      key = "<C-t>";
      mode = [
        "n"
        "t"
      ];
      action = "<cmd>ToggleTerm<CR>";
      options = {
        silent = true;
        noremap = true;
      };
    }
  ];
}
