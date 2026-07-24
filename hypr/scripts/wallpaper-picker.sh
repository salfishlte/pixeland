#!/usr/bin/env bash

WALL_DIR="~/Pictures/wallpapers"

if [ ! -d "$WALL_DIR" ]; then
    exit 1
fi

if [ $# -eq 0 ]; then
    find "$WALL_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -exec basename {} \;
else
    WALL_PATH="$WALL_DIR/$1"

    # echo "arg1=[$1] wall_path=[$WALL_PATH]" > /tmp/wallpaper-picker.log

    # if [ ! -f "$WALL_PATH" ]; then
        # echo "File not found: $WALL_PATH" >> /tmp/wallpaper-picker.log
        # exit 1
    # fi

    awww img "$WALL_PATH" --transition-type wipe --transition-fps 60

    ln -sf "$WALL_PATH" ~/.cache/current_wallpaper

    matugen image "$WALL_PATH" --source-color-index 0 --type scheme-tonal-spot
fi
