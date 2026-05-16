# LightModeExact

spicetify light theme plus a macOS launchd switcher.

dark mode switches to the marketplace/no-visual-theme setup, which leaves
spotify's normal dark UI alone. light mode switches to this theme and applies
the custom light CSS.

use:

```sh
spicetify config current_theme LightModeExact color_scheme Base
spicetify config replace_colors 0
spicetify apply
```

automatic switcher:

```sh
~/.config/spicetify/system-theme-switcher.zsh
launchctl bootstrap "gui/$(id -u)" ~/Library/LaunchAgents/com.tarioyou.spicetify-system-theme.plist
```
