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
  ];
}
