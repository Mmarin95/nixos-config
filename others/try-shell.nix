# Run with nix-shell try-shell.nix

{ pkgs ? import <nixpkgs> {} }:
let
  message = "hello world";
in
pkgs.mkShellNoCC {
    buildInputs = with pkgs; [ cowsay ];
    shellHook = ''
        echo "${message}" | cowsay
    '';        
}
