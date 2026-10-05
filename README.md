# ✨ DotFiles

> Personal Linux desktop/workflow dotfiles focused on **Hyprland (Lua + DMS) + terminal tooling**.

![Platform](https://img.shields.io/badge/platform-Linux-1793D1?style=for-the-badge&logo=linux)
![Shell](https://img.shields.io/badge/shell-Zsh%2FFish-F15A24?style=for-the-badge&logo=gnu-bash)
![WM](https://img.shields.io/badge/WM-Hyprland-58E1FF?style=for-the-badge)
![Editor](https://img.shields.io/badge/editor-Neovim-57A143?style=for-the-badge&logo=neovim)
![Theme](https://img.shields.io/badge/theme-Catppuccin-CBA6F7?style=for-the-badge)

---

## 🧭 Overview

This repository tracks desktop, shell, and application configuration files, including:

- Hyprland setup using Lua config modules and DMS
- Zsh + Oh My Zsh + Powerlevel10k shell workflow
- Fish shell modules and environment setup
- Kitty and Ghostty terminal configs/themes
- Neovim config using `mini.nvim` + Treesitter
- Spicetify, Vencord, GTK, Qt, and other desktop app configs

---

## 📦 Repository Layout

```text
.
├── .config/
│   ├── hypr/             # Hyprland Lua config + DMS modules
│   ├── fish/             # Fish shell config modules
│   ├── kitty/            # Kitty terminal config
│   ├── ghostty/          # Ghostty terminal config + themes
│   ├── nvim/             # Neovim plugins + editor setup
│   ├── spicetify/        # Spotify theming + marketplace app
│   ├── Vencord/          # Discord modded client config assets
│   ├── DankMaterialShell/ # Shell UI/config assets
│   ├── systemd/          # User services/targets
│   ├── wireplumber/      # Audio policy config
│   └── ...               # Additional app/tool configs
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
| **Shell (`.zshrc` + Fish)** | Oh My Zsh + Powerlevel10k workflow and Fish module-based setup |
| **Hyprland** | Lua-based config split into modules with DMS integration and startup hooks |
| **Neovim** | `mini.nvim` dependency manager + Treesitter + Catppuccin |
| **Kitty / Ghostty** | Terminal appearance, keybinds, themes, and shell integration |
| **Spicetify** | Marketplace app + themed Spotify setup |
| **Desktop stack** | GTK/Qt theming, wireplumber, environment modules, and app-specific configs |

---

## ⌨️ Key Workflow Notes

<details>
<summary><strong>Hyprland + DMS integration</strong></summary>

- Uses Lua modules to organize Hyprland behavior (general, environment, decoration, animation)
- Starts user session targets/services through systemd on Hyprland startup
- Includes DMS layout, bindings, outputs, and window rules modules

</details>

<details>
<summary><strong>Terminal + editor stack</strong></summary>

- Kitty as primary terminal
- Ghostty as an additional terminal profile
- Neovim with lightweight plugin stack around `mini.nvim`
- Zsh and Fish shell setups with prompt/plugin customization

</details>

---

## 🛠️ Customization Tips

1. Edit Hyprland Lua modules under `~/.config/hypr/`
2. Update shell aliases/plugins in `~/.zshrc` and `~/.config/fish/`
3. Adjust terminal style in `~/.config/kitty/` and `~/.config/ghostty/`
4. Tune Neovim plugins in `~/.config/nvim/init.lua`

---

## ⚠️ Compatibility

- Primarily designed for a Linux Wayland desktop with Hyprland.
- May require installing dependencies used by keybinds/scripts (for example: `hyprland`, `kitty`, `ghostty`, `fish`, `wpctl`, `playerctl`, `brightnessctl`, `kdeconnect`).
- Some monitor/workspace settings are tailored for multi-monitor setups.
