# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> { } }:

{
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  cabytcini = pkgs.callPackage ./pkgs/cabytcini { };
  discord = pkgs.callPackage ./pkgs/discord { };
  dwm = pkgs.callPackage ./pkgs/dwm { };
  gopls = pkgs.callPackage ./pkgs/gopls { };
  gruvbox-css = pkgs.callPackage ./pkgs/gruvbox-css { };
  ii = pkgs.callPackage ./pkgs/ii { };
  ix = pkgs.callPackage ./pkgs/ix { };
  johaus = pkgs.callPackage ./pkgs/johaus { };
  jvozba = pkgs.callPackage ./pkgs/jvozba { };
  luakit = pkgs.callPackage ./pkgs/luakit {
    inherit (pkgs.luajitPackages) luafilesystem;
  };
  minica = pkgs.callPackage ./pkgs/minica { };
  nix-simple-deploy = pkgs.callPackage ./pkgs/nix-simple-deploy { };
  quickserv = pkgs.callPackage ./pkgs/quickserv { };
  st = pkgs.callPackage ./pkgs/st { };
  sw = pkgs.callPackage ./pkgs/sw { };
}

