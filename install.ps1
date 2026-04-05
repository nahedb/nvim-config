# Neovim Setup Script — Windows
# Run from PowerShell as Administrator:
#   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
#   .\install.ps1

$ErrorActionPreference = "Stop"

function Log { param($msg) Write-Host "`n==> $msg" -ForegroundColor Cyan }
function Ok  { param($msg) Write-Host "    OK: $msg" -ForegroundColor Green }
function Warn { param($msg) Write-Host "    WARN: $msg" -ForegroundColor Yellow }

Log "Checking for winget..."
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Error "winget not found. Install App Installer from the Microsoft Store, then re-run."
}
Ok "winget found"

# ── Core tools ──────────────────────────────────────────────────────────────

Log "Installing Neovim (stable)..."
winget install --id Neovim.Neovim -e --accept-source-agreements --accept-package-agreements
Ok "Neovim installed"

Log "Installing Git..."
winget install --id Git.Git -e --accept-source-agreements --accept-package-agreements
Ok "Git installed"

Log "Installing Node.js LTS..."
winget install --id OpenJS.NodeJS.LTS -e --accept-source-agreements --accept-package-agreements
Ok "Node.js installed"

Log "Installing ripgrep (used by Telescope live grep)..."
winget install --id BurntSushi.ripgrep.MSVC -e --accept-source-agreements --accept-package-agreements
Ok "ripgrep installed"

Log "Installing fd (used by Telescope file finder)..."
winget install --id sharkdp.fd -e --accept-source-agreements --accept-package-agreements
Ok "fd installed"

Log "Installing cmake (required to build telescope-fzf-native)..."
winget install --id Kitware.CMake -e --accept-source-agreements --accept-package-agreements
Ok "cmake installed"

Log "Installing lazygit..."
winget install --id JesseDuffield.lazygit -e --accept-source-agreements --accept-package-agreements
Ok "lazygit installed"

# ── Reload PATH so npm is available ─────────────────────────────────────────
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" +
            [System.Environment]::GetEnvironmentVariable("Path","User")

# ── Node global packages ─────────────────────────────────────────────────────
Log "Installing tree-sitter-cli (required to build treesitter parsers)..."
npm install -g tree-sitter-cli
Ok "tree-sitter-cli installed"

# ── Nerd Font ────────────────────────────────────────────────────────────────
Log "Downloading JetBrainsMono Nerd Font..."
$fontUrl  = "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"
$fontZip  = "$env:TEMP\JetBrainsMono.zip"
$fontDir  = "$env:TEMP\JetBrainsMono"
Invoke-WebRequest -Uri $fontUrl -OutFile $fontZip
Expand-Archive -Path $fontZip -DestinationPath $fontDir -Force

$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
Get-ChildItem "$fontDir\*.ttf" | ForEach-Object {
    $fonts.CopyHere($_.FullName, 0x10)
}
Ok "JetBrainsMono Nerd Font installed — set it as your terminal font"

# ── Neovim config ────────────────────────────────────────────────────────────
$nvimConfig = "$env:LOCALAPPDATA\nvim"
Log "Setting up Neovim config at $nvimConfig ..."

if (Test-Path $nvimConfig) {
    Warn "Neovim config directory already exists at $nvimConfig"
    Warn "Skipping clone. Delete the directory first if you want a fresh install."
} else {
    git clone https://github.com/nahedb/nvim-config.git $nvimConfig
    Ok "Config cloned to $nvimConfig"
}

# ── Done ─────────────────────────────────────────────────────────────────────
Log "Setup complete!"
Write-Host @"

Next steps:
  1. Set your terminal font to 'JetBrainsMono Nerd Font'
  2. Open Neovim: nvim
  3. Plugins install automatically on first launch (lazy.nvim)
  4. Run :Lazy sync to make sure everything is up to date
  5. Run :Mason to install/manage LSP servers

"@ -ForegroundColor White
