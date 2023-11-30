{ pkgs, inputs, ... }:

{
  programs.neovim = {
    enable = true;
    xdg.configFile."nvim" = {
        source = ./my-config/;
        recursive = true
    };
}
