#!/bin/zsh
set -euo pipefail

PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

if ! command -v spicetify >/dev/null 2>&1; then
  exit 0
fi

if defaults read -g AppleInterfaceStyle >/dev/null 2>&1; then
  spicetify config current_theme marketplace color_scheme '' replace_colors 0 inject_css 1 inject_theme_js 1 >/dev/null
else
  spicetify config current_theme LightModeExact color_scheme Base replace_colors 0 inject_css 1 inject_theme_js 1 >/dev/null
fi

spicetify apply >/dev/null
