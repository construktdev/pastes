#!/bin/bash

URL="https://cdn.construkter.de/wallpaper.png"
DEST="$HOME/Pictures/wallpaper.png"

mkdir -p "$HOME/Pictures"
curl -L "$URL" -o "$DEST"

gsettings set org.gnome.desktop.background picture-uri "file://$DEST"
gsettings set org.gnome.desktop.background picture-uri-dark "file://$DEST"
