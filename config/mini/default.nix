{ ... }:
{
  # imports = [ ./mini-pairs.nix ];
  plugins.mini = {
    enable = true;
    modules = {
      pairs = {
        modes = {
          insert = true;
          command = false;
          terminal = false;
        };
      };
      # starter = import ./mini-starter.nix;
    };
  };
}
