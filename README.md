# nvim-config

Personal Neovim configuration.

## Quick Install

### Windows (PowerShell as Administrator)
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\install.ps1
```

### macOS
```bash
bash install.sh
```

Both scripts install: Neovim, Git, Node.js, ripgrep, fd, cmake, lazygit, tree-sitter-cli, and JetBrainsMono Nerd Font.

After running the script, copy (or symlink) this config:

**Windows:** `%LOCALAPPDATA%\nvim\`
**macOS:** `~/.config/nvim/`

Then open Neovim — lazy.nvim bootstraps itself and installs all plugins on first launch.

## Keybindings & Plugin Guide

See [CHEATSHEET.md](CHEATSHEET.md).
