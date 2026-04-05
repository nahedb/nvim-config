#!/usr/bin/env bash
# Neovim Setup Script — macOS
# Usage: bash install.sh

set -euo pipefail

log()  { echo -e "\n\033[0;36m==> $*\033[0m"; }
ok()   { echo -e "    \033[0;32mOK: $*\033[0m"; }
warn() { echo -e "    \033[0;33mWARN: $*\033[0m"; }

# ── Homebrew ─────────────────────────────────────────────────────────────────
log "Checking for Homebrew..."
if ! command -v brew &>/dev/null; then
    log "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
ok "Homebrew ready"

# ── Core tools ───────────────────────────────────────────────────────────────
log "Installing Neovim (stable)..."
brew install neovim
ok "Neovim installed"

log "Installing Git..."
brew install git
ok "Git installed"

log "Installing Node.js LTS..."
brew install node@22
ok "Node.js installed"

log "Installing ripgrep (used by Telescope live grep)..."
brew install ripgrep
ok "ripgrep installed"

log "Installing fd (used by Telescope file finder)..."
brew install fd
ok "fd installed"

log "Installing cmake (required to build telescope-fzf-native)..."
brew install cmake
ok "cmake installed"

log "Installing lazygit..."
brew install lazygit
ok "lazygit installed"

# ── Node global packages ──────────────────────────────────────────────────────
log "Installing tree-sitter-cli (required to build treesitter parsers)..."
npm install -g tree-sitter-cli
ok "tree-sitter-cli installed"

# ── Nerd Font ─────────────────────────────────────────────────────────────────
log "Installing JetBrainsMono Nerd Font..."
brew install --cask font-jetbrains-mono-nerd-font
ok "JetBrainsMono Nerd Font installed — set it as your terminal font"

# ── Neovim config ─────────────────────────────────────────────────────────────
NVIM_CONFIG="$HOME/.config/nvim"
log "Setting up Neovim config at $NVIM_CONFIG ..."

if [ -d "$NVIM_CONFIG" ]; then
    warn "Neovim config directory already exists at $NVIM_CONFIG"
    warn "Skipping clone. Delete the directory first if you want a fresh install."
else
    git clone https://github.com/nahedb/nvim-config.git "$NVIM_CONFIG"
    ok "Config cloned to $NVIM_CONFIG"
fi

# ── Done ──────────────────────────────────────────────────────────────────────
log "Setup complete!"
cat <<EOF

Next steps:
  1. Set your terminal font to 'JetBrainsMono Nerd Font'
  2. Open Neovim: nvim
  3. Plugins install automatically on first launch (lazy.nvim)
  4. Run :Lazy sync to make sure everything is up to date
  5. Run :Mason to install/manage LSP servers

EOF
