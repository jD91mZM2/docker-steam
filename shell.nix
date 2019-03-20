{ pkgs ? import <nixos-unstable> {} }:
with pkgs;

stdenv.mkDerivation rec {
  name = "docker-steam";
  buildInputs = [ x11docker ];
}
