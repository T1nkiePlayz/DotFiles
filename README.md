# ✨ DotFiles

> Personal Linux desktop/workflow dotfiles focused on **Hyprland + Noctalia + terminal tooling**.

![Platform](https://img.shields.io/badge/platform-Linux-1793D1?style=for-the-badge&logo=linux)
![Shell](https://img.shields.io/badge/shell-Zsh-F15A24?style=for-the-badge&logo=gnu-bash)
![WM](https://img.shields.io/badge/WM-Hyprland-58E1FF?style=for-the-badge)
![Editor](https://img.shields.io/badge/editor-Neovim-57A143?style=for-the-badge&logo=neovim)
![Theme](https://img.shields.io/badge/theme-Catppuccin-CBA6F7?style=for-the-badge)

---

## 🧭 Overview

This repository tracks desktop, shell, and application configuration files, including:

- Hyprland window manager setup (modular config + scripts)
- Zsh + Oh My Zsh + Powerlevel10k shell workflow
- Kitty terminal theming/keymaps
- Neovim config using `mini.nvim` + Treesitter
- Yazi file manager config and plugins
- Spicetify and Vencord-related configs
- Noctalia shell/plugin setup (QML/JS based)

---

## 📦 Repository Layout

```text
.
├── .config/
│   ├── hypr/         # Hyprland, hypridle, hyprsunset, helper scripts
│   ├── kitty/        # Terminal appearance and keybinds
│   ├── nvim/         # Neovim plugins + editor setup
│   ├── yazi/         # File manager config + Lua plugins
│   ├── noctalia/     # QuickShell/Noctalia config + plugins
│   ├── spicetify/    # Spotify theming + marketplace app
│   ├── firejail/     # App sandbox profiles
│   ├── mako/         # Notification daemon config
│   ├── mpv/          # Media player config
│   ├── Vencord/      # Discord modded client config assets
│   └── zed/          # Zed editor settings
├── .zshrc
└── .dotfiles-meta/
```

---

## 🚀 Quick Start

### 1) Clone

```bash
git clone https://github.com/T1nkiePlayz/DotFiles.git
cd DotFiles
```

### 2) Back up existing configs (recommended)

```bash
mkdir -p ~/.backup-dotfiles
cp -a ~/.config ~/.backup-dotfiles/config-$(date +%F-%H%M%S) 2>/dev/null || true
cp -a ~/.zshrc ~/.backup-dotfiles/zshrc-$(date +%F-%H%M%S) 2>/dev/null || true
```

### 3) Apply dotfiles

```bash
rsync -av --progress --exclude ".git/" ./ ~/
```

> [!WARNING]
> This repository contains personal preferences and machine-specific settings. Review files before applying on another system.

---

## 🧩 What’s Configured

| Area | Highlights |
|---|---|
| **Shell (`.zshrc`)** | Oh My Zsh, Powerlevel10k, autosuggestions, syntax highlighting, Docker/firewalld plugins, `eza` alias |
| **Hyprland** | Modular config includes env/monitor/exec/keybind/rules/color files + custom scripts |
| **Noctalia** | QuickShell startup + custom plugins (clipper, keybind-cheatsheet, translator, simple-notes, privacy-indicator) |
| **Neovim** | `mini.nvim` dependency manager + Treesitter + Catppuccin |
| **Kitty** | Catppuccin palette, transparency, font controls, shell integration |
| **Yazi** | Plugin-enabled workflow (`full-border`, `git`, `mount`, `smart-paste`) |
| **Spicetify** | Marketplace app + themed Spotify setup |
| **Firejail** | Sandbox profiles and launcher wrapper script |
| **Zed** | Vim mode, VSCode keymap, Catppuccin theme, Copilot model defaults |

---

## ⌨️ Key Workflow Notes

<details>
<summary><strong>Hyprland + Noctalia integration</strong></summary>

- Starts QuickShell and wallpaper daemon on login
- Launcher, control center, clipboard history, keybind cheatsheet, and other panels mapped to Super/Alt combos
- Custom scripts for screenshots, workspace actions, zoom, and app launching

</details>

<details>
<summary><strong>Terminal + editor stack</strong></summary>

- Kitty as primary terminal
- Neovim with lightweight plugin stack around `mini.nvim`
- Zsh with productivity plugins and prompt customization

</details>

---

## 🔒 Security / Isolation Notes

- A helper launcher script wraps selected apps with Firejail profiles when available.
- Multiple application launches in Hyprland keybinds route through sandboxed execution.

```bash
~/.config/hypr/hyprland/scripts/firejail.sh <app> [args...]
```

---

## 🛠️ Customization Tips

1. Edit Hyprland includes under `~/.config/hypr/hyprland/`
2. Update shell aliases/plugins in `~/.zshrc`
3. Adjust terminal style in `~/.config/kitty/kitty.conf`
4. Tune Neovim plugins in `~/.config/nvim/init.lua`

---

## ⚠️ Compatibility

- Primarily designed for a Linux Wayland desktop with Hyprland.
- May require installing dependencies used by keybinds/scripts (for example: `quickshell`, `hypridle`, `hyprsunset`, `firejail`, `kitty`, `yazi`, `wpctl`, `playerctl`, `brightnessctl`).
- Some monitor/workspace settings are tailored for multi-monitor setups.

---

## 📄 License

No explicit repository-wide license file is currently included.
