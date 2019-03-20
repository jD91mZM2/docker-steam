#!/usr/bin/env nix-shell
#!nix-shell -i sh

# ./run.sh [path to x11docker]

set -e
cd "$(dirname "$BASH_SOURCE")"

docker build -t steam .

x11docker="$1"
if [ -z "$x11docker" ]; then
    x11docker="x11docker"
fi

eval "$x11docker" steam \
    `# Allow system dbus. This seems to stop a segfault.` \
    --dbus-system \
    `# Use the gpu so games do not run too slow :)` \
    --gpu \
    `# Store steam data in ~/.local/share/x11docker/steam` \
    --home \
    `# Use hostdisplay. Sadly not ideal, but one of my games needs this.` \
    --hostdisplay \
    `# Use pulseaudio. This also seems to stop a segfault` \
    --pulseaudio
