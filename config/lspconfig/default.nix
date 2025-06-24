{ ... }:
{
  imports = [
    ./clangd.nix
    ./rust_analyzer.nix
  ];
  plugins.lspconfig = {
    enable = true;
  };
  plugins.lsp-signature = {
    enable = true;
  };
}
