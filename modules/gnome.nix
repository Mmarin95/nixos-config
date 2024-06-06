{ pkgs, ...}:

{
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  # Add extensions to the gnome shell for the user
  users.users.mm = {
    packages = with pkgs; [
      gnome-extension-manager
      gnomeExtensions.caffeine
      gnomeExtensions.clipboard-indicator
    ];
  };

}
