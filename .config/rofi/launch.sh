#!/bin/bash

# 1. Pega o caminho da imagem do cache do wal
WAL_IMG=$(cat "$HOME/.cache/wal/wal")

# 2. Executa o rofi com as correções de sintaxe
rofi -show drun \
-theme "/home/lima/.config/rofi/themes/menu6.rasi" \
-theme-str "@import \"$HOME/.cache/wal/colors-rofi-dark.rasi\"" \
-theme-str "image { background-image: url(\"$WAL_IMG\", width); }" \
-theme-str "entry { placeholder: \"Search..\"; cursor: text; }" \
-theme-str "inputbar { spacing: 10px; padding: 15px; margin: 10px; border-radius: 30px; background-color: @background; }"