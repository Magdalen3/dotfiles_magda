#!/bin/bash

#para agregar carpetas que se quieran guardar basta con agregarla al array de abajo
# este, configs#
configs=("nvim" "sway" "swaylock" "waybar" "foot")

dotfiles_dir="$HOME/dotfiles_magda"
if [ ! -d "$dotfiles_dir" ]; then
  mkdir -p "$dotfiles_dir"
  echo "carpeta dotfiles creada en $dotfiles_dir"
fi

for config in "${configs[@]}"; do
  config_path="$HOME/.config/$config"

  if [ -f "$config_path" ] || [ -d "$config_path" ]; then
    cp -r "$config_path" "$dotfiles_dir/"
    echo "copiado: $config"
  else
    echo "no encontrado: $config_path"
  fi
done

echo "listop"
