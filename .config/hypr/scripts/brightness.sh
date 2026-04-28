#!/bin/bash

# Defina sem a barra no final para evitar //
iDIR="$HOME/.config/hypr/scripts/IconsScripts"
notification_timeout=1000

# Get brightness
get_backlight() {
    # Simplificado: o sed limpa o % direto aqui
    brightnessctl -m | cut -d, -f4 | sed 's/%//'
}

# Get icons
get_icon() {
    # Removido o 'local' para a variável ser global
    current=$(get_backlight)
    
    if   [ "$current" -le "20" ]; then
        icon="$iDIR/brightness-20.png"
    elif [ "$current" -le "40" ]; then
        icon="$iDIR/brightness-40.png"
    elif [ "$current" -le "60" ]; then
        icon="$iDIR/brightness-60.png"
    elif [ "$current" -le "80" ]; then
        icon="$iDIR/brightness-80.png"
    else
        icon="$iDIR/brightness-100.png"
    fi
}

# Notify
notify_user() {
    # Adicionado o tempo de expiração que você definiu mas não estava usando
    notify-send -e -t "$notification_timeout" \
        -h string:x-canonical-private-synchronous:brightness_notif \
        -h int:value:"$current" \
        -u low \
        -i "$icon" \
        "Brightness : $current%"
}

# Change brightness
change_backlight() {
    # A ordem agora garante que current e icon existam antes do notify
    brightnessctl set "$1"
    get_icon
    notify_user
}

# Execute accordingly
case "$1" in
    "--get")
        get_backlight
        ;;
    "--inc")
        change_backlight "10%+"
        ;;
    "--dec")
        change_backlight "10%-"
        ;;
    *)
        get_backlight
        ;;
esac