# devuan-dotfiles

Devuan Excalibur (MangoWC + fish + Alacritty) dotfiles. Flat layout
mirroring `$HOME` — clone and copy/symlink. Companion to
[`mangowc-setup-devuan`](https://github.com/razael25/mangowc-setup-devuan)
(the installer); this repo is the resulting home config. Fedora variant:
[`fedora-dotfiles`](https://github.com/razael25/fedora-dotfiles).

## Contents

- Shell: `.bashrc`, `.bash_logout`, `.profile`, `.gitconfig`, fish
  (`tide` prompt via fisher) — no oh-my-zsh, startup stays instant
- `.config/mango/` — MangoWC config, quickshell bar, scripts (runit-safe:
  no `systemctl`/`systemd-inhibit` assumptions), wallpaper
- `.config/alacritty/alacritty.toml` — Kitty-theme port
  (SauceCodePro Nerd Font Mono)
- `.config/swappy/`, `.config/btop/`, `.config/geany/`, `.config/xfce4/`,
  `.config/Thunar/`, `.config/nwg-look/`
- `.config/gtk-3.0/`, `gtk-4.0/`, `mimeapps.list`, `user-dirs.*`,
  `pavucontrol.ini`

## Excluded on purpose (secrets / machine-specific / heavy)

`.ssh/`, `.config/gh/`, `.config/opencode/`, `.opencode/`, `.cache/`,
`.dbus/`, browser profiles (`librewolf/`, `mozilla/`, helium),
`.config/pulse/`, `.config/dconf/`, history files (`.bash_history`),
`wpa-psk` secrets, `*.bak-*`, `.dotfiles.bak-*/`.
Note: `.config/dunst/dunstrc` is a symlink into `.config/mango/dunst/`,
so it is covered by the mango tree.

## Install

```bash
git clone https://github.com/razael25/devuan-dotfiles.git ~/devuan-dotfiles
cd ~/devuan-dotfiles
./install.sh            # symlink mode (default)
./install.sh --copy     # copy mode instead
```

Existing files are backed up to `~/.dotfiles.bak-<timestamp>/` first.
