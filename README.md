# aerospace-config

My [AeroSpace](https://github.com/nikitabobko/AeroSpace) tiling window manager config for macOS.

## Highlights

- Vim-style focus and move: `alt-h/j/k/l` and `alt-shift-h/j/k/l`
- Workspaces on `alt-<key>`, send windows with `alt-shift-<key>`
- 10px inner and outer gaps
- Spotify and Discord float by default
- `alt-s` / `alt-d` summon Spotify / Discord onto the current workspace ([scripts/summon-app.sh](scripts/summon-app.sh))
- `alt-shift-;` enters service mode (reload, reset layout, toggle floating)

## Install

```sh
git clone https://github.com/nathandalpatan/aerospace-config ~/.config/aerospace
```

Then reload AeroSpace (`alt-shift-;` then `esc`).
