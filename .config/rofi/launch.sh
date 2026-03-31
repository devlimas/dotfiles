# 1. Pega o caminho do wallpaper do seu hyprpaper.conf
WALL=$(grep 'path =' ~/.config/hypr/hyprpaper.conf | cut -d '=' -f 2 | xargs)

# 2. Gera a paleta de cores baseada na imagem (o Pywal cria o arquivo ~/.cache/wal/colors-rofi-dark.rasi)
# O parâmetro -n diz para não mudar o wallpaper do sistema, apenas gerar as cores.
wal -i "$WALL" -n

# 3. Abre o rofi injetando a imagem e usando as cores que o wal acabou de gerar
#rofi -show drun -theme-str "mainbox { background-image: url(\"$WALL\", width); }"

rofi -show drun -theme-str "image { background-image: url(\"$WALL\", width); }"
