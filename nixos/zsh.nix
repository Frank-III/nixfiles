{ pkgs, ... }:

{
  programs.zsh.enable = true;
  users.users.frank.shell = pkgs.zsh;
  environment.pathsToLink = [
    "/share/zsh" # For completions of system packages
  ];
}
