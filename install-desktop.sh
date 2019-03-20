#!/bin/sh

path="$(realpath "$(dirname "$BASH_SOURCE")")"

cp Steam.desktop ~/.local/share/applications/Steam.desktop
sed -i "s|<dir>|$path|" ~/.local/share/applications/Steam.desktop
