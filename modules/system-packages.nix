# system packages that I would like to install 
{ config, pkgs, pkgs-unstable, inputs, ... }:

let
  packages = with pkgs; [
    wget
    curl
    git
    firefox

    # helix as example on how to use external sources like github to install packages
    inputs.helix.packages."${pkgs.system}".helix
  ];

  unstable-packages = with pkgs-unstable; [
    neovim
  ];
in
{
  environment.systemPackages = packages ++ unstable-packages;
}
