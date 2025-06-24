{ pkgs, ... }:
let
  makeSimpleMapKey =
    mode:
    (
      key:
      (
        action:
        (desc: ({
          key = key;
          mode = pkgs.lib.strings.stringToCharacters mode;
          action = action;
          options = {
            desc = desc;
          };
        }))
      )
    );
  makeMapKey =
    mode:
    (
      key:
      (
        action:
        (opts: ({
          key = key;
          mode = pkgs.lib.strings.stringToCharacters mode;
          action = action;
          options = opts;
        }))
      )
    );

  default_opts = {
    silent = true;
    noremap = true;
  };
in
{
  keymaps = [
    # save file
    (makeSimpleMapKey "ixns" "<C-S>" "<cmd>w<cr><esc>" "Save File")

    # Move to window using the <ctrl> hjkl keys
    (makeSimpleMapKey "n" "<C-h>" "<C-w>h" "Go to Left Window")
    (makeSimpleMapKey "n" "<C-j>" "<C-w>j" "Go to Lower Window")
    (makeSimpleMapKey "n" "<C-k>" "<C-w>k" "Go to Upper Window")
    (makeSimpleMapKey "n" "<C-l>" "<C-w>l" "Go to Right Window")

    # Resize window using <ctrl> arrow keys
    (makeSimpleMapKey "n" "<C-Up>" "<cmd>resize +2<cr>" "Increase Window Height")
    (makeSimpleMapKey "n" "<C-Down>" "<cmd>resize -2<cr>" "Decrease Window Height")
    (makeSimpleMapKey "n" "<C-Left>" "<cmd>vertical resize -2<cr>" "Decrease Window Width")
    (makeSimpleMapKey "n" "<C-Right>" "<cmd>vertical resize +2<cr>" "Increase Window Width")

    # buffers
    (makeSimpleMapKey "n" "<S-h>" "<cmd>bprevious<cr>" "Prev Buffer")
    (makeSimpleMapKey "n" "<S-l>" "<cmd>bnext<cr>" "Next Buffer")
    (makeSimpleMapKey "n" "[b" "<cmd>bprevious<cr>" "Prev Buffer")
    (makeSimpleMapKey "n" "]b" "<cmd>bnext<cr>" "Next Buffer")

    # windows
    (makeSimpleMapKey "n" "<leader>-" "<C-W>s" "Split Window Below")
    (makeSimpleMapKey "n" "<leader>|" "<C-W>v" "Split Window Right")
    (makeSimpleMapKey "n" "<leader>wd" "<C-W>c" "Delete Window")

    # quit
    (makeSimpleMapKey "n" "<leader>qq" "<cmd>qa<cr>" "Quit All")

    # explorer
    (makeMapKey "n" "<leader>e" "<cmd>lua Snacks.explorer()<cr>" {
      silent = true;
      noremap = true;
    })

    # file picker
    (makeMapKey "n" "<leader>ff" "<cmd>lua Snacks.picker.files()<cr>" default_opts)

    # git related
    (makeMapKey "n" "<leader>gl" "<cmd>lua Snacks.picker.git_log()<cr>" default_opts)
    (makeMapKey "n" "<leader>gs" "<cmd>lua Snacks.picker.git_status()<cr>" default_opts)

    # colorscheme picker
    (makeMapKey "n" "<leader>uC" "<cmd>lua Snacks.picker.colorscheme()<cr>" { })

    # buffer
    (makeMapKey "n" "<leader>bd" "<cmd>lua Snacks.bufdelete()<cr>" { desc = "Delete Buffer"; })
    (makeMapKey "n" "<leader>bo" "<cmd>lua Snacks.bufdelete.other()<cr>" { desc = "Delete Other Buffers"; })

    # highlights under cursor
    # (makeMapKey "n" "<leader>ui" "<cmd>vim.show_pos<cr>" { desc = "Inspect Pos"; })

    # commenting
    (makeMapKey "n" "gco" "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>" { desc = "Add Comment Bellow"; })

    # tabs
    (makeMapKey "n" "<leader><tab>l" "<cmd>tablast<cr>" { desc = "Last Tab"; })
    (makeMapKey "n" "<leader><tab>o" "<cmd>tabonly<cr>" { desc = "Close Other Tabs"; })
    (makeMapKey "n" "<leader><tab>f" "<cmd>tabfirst<cr>" { desc = "First Tab"; })
    (makeMapKey "n" "<leader><tab><tab>" "<cmd><tabnew><cr>" { desc = "New Tab"; })
    (makeMapKey "n" "<leader><tab>]" "<cmd>tabnext<cr>" { desc = "Next Tab"; })
    (makeMapKey "n" "<leader><tab>d" "<cmd>tabclose<cr>" { desc = "Close Tab"; })
    (makeMapKey "n" "<leader><tab>[" "<cmd>tabprevious<cr>" { desc = "Previous Tab"; })
  ];
}
