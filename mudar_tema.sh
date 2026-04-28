#!/bin/bash

IMG="$1"
CONFIG_HYPR="$HOME/.config/hypr/hyprpaper.conf"
CONFIG_HYPRLOCK="$HOME/.config/hypr/hyprlock.conf"

# Verifica se a imagem existe
if [ ! -f "$IMG" ]; then
    echo "Erro: imagem não encontrada!"
    exit 1
fi

wal -i "$IMG" -q

hyprctl hyprpaper preload "$IMG" 2>/dev/null
hyprctl hyprpaper wallpaper "eDP-1,$IMG"

sed -i "s|preload = .*|preload = $IMG|g" "$CONFIG_HYPR"
sed -i "s|path = .*|path = $IMG|g" "$CONFIG_HYPR"

sed -i "s|\$wallpaper *= .*|\$wallpaper = $IMG|g" "$CONFIG_HYPRLOCK"

pkill -USR2 waybar 2>/dev/null
swaync-client -rs 2>/dev/null
hyprctl hyprpaper unload all 2>/dev/null

echo "Wallpaper, cores e hyprlock atualizados!"
