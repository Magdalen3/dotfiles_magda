#!/bin/bash

OUTPUT="DVI-D-1"  # Cambia esto si tu salida tiene otro nombre

# Obtenemos el valor de la tasa de refresco actual usando jq
CURRENT_REFRESH=$(swaymsg -t get_outputs | jq -r ".[] | select(.name == \"$OUTPUT\") | .current_mode.refresh")

# Cambiar según el valor de la tasa de refresco
if [ "$CURRENT_REFRESH" == "144001" ]; then
    echo "Cambiando a 60Hz..."
    swaymsg "output $OUTPUT mode 1920x1080@60Hz"
else
    echo "Cambiando a 144Hz..."
    swaymsg "output $OUTPUT mode 1920x1080@144Hz"
fi

