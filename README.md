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

Both scripts install: Neovim, Git, Node.js, ripgrep, fd, cmake, lazygit, tree-sitter-cli, and JetBrainsMono Nerd Font. They also clone this config to the correct Neovim config directory automatically.

Then open Neovim — lazy.nvim bootstraps itself and installs all plugins on first launch.

## Keybindings & Plugin Guide

See [CHEATSHEET.md](CHEATSHEET.md).
