{
  spec = [
    {
      mode = [
        "n"
        "v"
      ];
      __unkeyed = [
        {
          __unkeyed = "<leader><tab>";
          group = "tabs";
        }
        {
          __unkeyed = "<leader>c";
          group = "code";
        }
        {
          __unkeyed = "<leader>f";
          group = "file/find";
        }
        {
          __unkeyed = "<leader>g";
          group = "git";
        }
        {
          __unkeyed = "<leader>gh";
          group = "hunks";
        }
        {
          __unkeyed = "<leader>q";
          group = "quit/session";
        }
        {
          __unkeyed = "<leader>s";
          group = "search";
        }
        {
          __unkeyed = "<leader>u";
          group = "ui";
          icon = {
            icon = "󰙵 ";
            color = "cyan";
          };
        }
        {
          __unkeyed = "<leader>x";
          group = "diagnostics/quickfix";
          icon = {
            icon = "󱖫 ";
            color = "green";
          };
        }
        {
          __unkeyed = "[";
          group = "prev";
        }
        {
          __unkeyed = "]";
          group = "next";
        }
        {
          __unkeyed = "g";
          group = "goto";
        }
        {
          __unkeyed = "gs";
          group = "surround";
        }
        {
          __unkeyed = "z";
          group = "fold";
        }
        {
          __unkeyed = "<leader>b";
          group = "buffer";
          icon = "󰓩 ";
          /*
            expand = ''
              function()
                return require("which-key.extras").expand.buf()
              end
            '';
          */
          # expand = ""
        }
        {
          __unkeyed = "<leader>w";
          group = "windows";
        }
      ];
    }
  ];
}
