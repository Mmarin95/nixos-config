{ config, pkgs, pkgs-unstable, inputs, ... }:

{
  imports =
    [ 
      ../../modules/system.nix
      ../../modules/system-packages.nix
      ../../modules/gnome.nix
      
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.luks.devices."luks-4e6332d5-313d-494a-a0e0-825787ea2259".device = "/dev/disk/by-uuid/4e6332d5-313d-494a-a0e0-825787ea2259";
  networking.hostName = "phobos";

  # Enable networking
  networking.networkmanager.enable = true;
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  system.stateVersion = "24.05"; # do not change

}
