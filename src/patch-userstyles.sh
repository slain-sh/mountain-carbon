#!/bin/zsh

# Usage: patch-userstyles.sh
# script to patch import.json from catppuccin userstyles

catppuccin_url="https://userstyles.catppuccin.com/lib/lib.less"
mountain_carbon_url="https://raw.githubusercontent.com/slain-sh/mountain-carbon/refs/heads/main/lib/lib.less"

for file in "$@"; do
  if [[ -f "$file" ]]; then
    echo "Updating $file..."
    sed -i "s|$catppuccin_url|$mountain_carbon_url|g" "$file"
  else
    echo "Skipping $file (not found)"
  fi
done
