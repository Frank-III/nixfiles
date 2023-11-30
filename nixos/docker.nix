{ ... }:

{
  virtualisation.docker.enable = true;
  users.users.frank.extraGroups = [ "docker" ];
}
