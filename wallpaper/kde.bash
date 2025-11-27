#!/bin/bash

URL="https://cdn.construkter.de/wallpaper.png"
DEST="$HOME/Pictures/wallpaper.png"

mkdir -p "$HOME/Pictures"
curl -L "$URL" -o "$DEST"

qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "
var allDesktops = desktops();
for (i=0;i<allDesktops.length;i++) {
    d = allDesktops[i];
    d.wallpaperPlugin = 'org.kde.image';
    d.currentConfigGroup = Array('Wallpaper', 'org.kde.image', 'General');
    d.writeConfig('Image', 'file://$DEST');
}
"
