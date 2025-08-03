{
  number = true;
  confirm = true; # Confirm to save changes before exiting modified buffer
  cursorline = true; # Enable highlighting of the current line
  expandtab = true; # Use spaces instead of tabs
  grepformat = "%f:%l:%c:%m";
  grepprg = "rg --vimgrep";
  ignorecase = true;
  inccommand = "nosplit"; # preview incremental substitute
  linebreak = true; # Wrap lines at convenient points
  wrap = false; # Disable line wrap
  # colorcolumn = "80";
  relativenumber = true;
  shiftround = true; # Round indent
  shiftwidth = 2; # Size of an indent
  tabstop = 2; # Number of spaces tabs count for
  smartindent = true; # Insert indents automatically

  showmode = false; # Don't show mode since we have a statusline

  swapfile = false; # Undotree
  backup = false; # Undotree
  undofile = true;
  hlsearch = false;
  incsearch = true;
  termguicolors = true; # True color support
  scrolloff = 8;
  signcolumn = "yes";
  updatetime = 50; # Save swap file and trigger CursorHold
  foldlevelstart = 99;
}
