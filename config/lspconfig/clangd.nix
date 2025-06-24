{
  lsp.servers.clangd = {
    enable = true;
    settings = {
      cmd = [
        "clangd"
        "--background-index"
      ];
      filetypes = [
        "c"
        "cpp"
      ];
      root_markers = [
        "compile_commands.json"
        "compile_flags.txt"
      ];
    };
  };
}
