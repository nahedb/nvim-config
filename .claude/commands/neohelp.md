# Neovim Keymap Reference

Display the full keymap and command reference for this Neovim config. Answer questions about specific keys, find what a leader prefix does, or look up any plugin's bindings.

---

## Leader Key: `<Space>`

---

## Navigation

| Key | Action |
|-----|--------|
| `<C-h>` | Move to left window |
| `<C-j>` | Move to lower window |
| `<C-k>` | Move to upper window |
| `<C-l>` | Move to right window |
| `<C-Up>` | Increase window height |
| `<C-Down>` | Decrease window height |
| `<C-Left>` | Decrease window width |
| `<C-Right>` | Increase window width |
| `<C-d>` | Scroll down (cursor centered) |
| `<C-u>` | Scroll up (cursor centered) |
| `n` / `N` | Next/prev search result (cursor centered) |
| `<S-h>` | Previous buffer |
| `<S-l>` | Next buffer |

---

## File Explorer (Neo-tree)

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle file explorer |
| `<leader>o` | Focus file explorer |

---

## Find / Telescope (`<leader>f`)

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Help tags |
| `<leader>fr` | Recent files |
| `<leader>fw` | Grep word under cursor |
| `<leader>ft` | Find TODOs |
| `<C-k>` / `<C-j>` | Move selection up/down (inside Telescope) |
| `<C-q>` | Send selected to quickfix (inside Telescope) |

---

## LSP (`<leader>l`, `g*`)

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Go to references (Telescope) |
| `gi` | Go to implementation (Telescope) |
| `gt` | Go to type definition |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>lf` | Format file (LSP) |
| `<leader>F` | Format file (conform) |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>d` | Show diagnostic float |
| `<leader>dc` | Copy diagnostic at cursor to clipboard |

---

## Git (`<leader>g`, `<leader>h`)

| Key | Action |
|-----|--------|
| `<leader>gg` | Open LazyGit |
| `<leader>gs` | Git status (Telescope) |
| `]h` | Next hunk |
| `[h` | Previous hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hu` | Undo stage hunk |
| `<leader>hR` | Reset buffer |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line (full) |
| `<leader>hd` | Diff this |

---

## Buffer (`<leader>b`)

| Key | Action |
|-----|--------|
| `<leader>bd` | Delete buffer (keeps window layout) |

---

## Terminal (`<leader>t`)

| Key | Action |
|-----|--------|
| `<C-\>` | Toggle terminal (normal + terminal mode) |
| `<leader>tf` | Terminal float |
| `<leader>th` | Terminal horizontal split |
| `<leader>tv` | Terminal vertical split (60 cols) |

---

## Search & Replace (`<leader>s`)

| Key | Action |
|-----|--------|
| `<leader>sr` | Open grug-far search & replace |
| `<leader>sw` | Search word under cursor (grug-far) |

---

## Trouble / Diagnostics (`<leader>x`)

| Key | Action |
|-----|--------|
| `<leader>xx` | Toggle workspace diagnostics |
| `<leader>xd` | Toggle buffer diagnostics |
| `<leader>xq` | Toggle quickfix list |
| `<leader>xl` | Toggle location list |

---

## Editing

| Key | Action |
|-----|--------|
| `s` (n/x/o) | Flash jump |
| `S` (n/x/o) | Flash Treesitter jump |
| `r` (o) | Remote Flash |
| `R` (o/x) | Treesitter search |
| `<C-s>` (cmd) | Toggle Flash search |
| `ys` / `cs` / `ds` | Surround add / change / delete |
| `gc` | Toggle comment (line) |
| `gb` | Toggle comment (block) |
| `v <` / `v >` | Indent left/right (keep selection) |
| `v J` / `v K` | Move selection down/up |

---

## General

| Key | Action |
|-----|--------|
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `<Esc>` / `<leader>nh` | Clear search highlights |

---

## Dashboard (on startup)

| Key | Action |
|-----|--------|
| `f` | Find file |
| `r` | Recent files |
| `g` | Live grep |
| `e` | File explorer |
| `q` | Quit |

---

## Completion (blink.cmp)

| Key | Action |
|-----|--------|
| `<C-Space>` | Show / hide completion menu |
| `<C-j>` / `<C-k>` | Select next / previous item |
| `<Tab>` / `<S-Tab>` | Snippet forward / backward or select next/prev |
| `<CR>` | Accept completion |
| `<C-e>` | Hide completion menu |
| `<C-b>` / `<C-f>` | Scroll documentation up / down |

---

## Commands

| Command | Action |
|---------|--------|
| `:Mason` | Open Mason installer UI |
| `:MasonInstall <name>` | Install a tool (e.g. `csharpier`) |
| `:Lazy` | Open lazy.nvim plugin manager |
| `:LazyGit` | Open LazyGit (also `<leader>gg`) |
| `:Neotree toggle` | Toggle file explorer |
| `:ConformInfo` | Show conform formatter status |
| `:TSUpdate` | Update Treesitter parsers |
| `:colorscheme <name>` | Switch colorscheme temporarily |

---

## Colorschemes

Active default is **catppuccin-mocha**. Others available:

| Command | Theme |
|---------|-------|
| `:colorscheme catppuccin-mocha` | Catppuccin Mocha (dark, default) |
| `:colorscheme catppuccin-macchiato` | Catppuccin Macchiato (darker) |
| `:colorscheme everforest` | Everforest (green, easy on eyes) |
| `:colorscheme tokyonight` | Tokyo Night (dark purple/blue) |
| `:colorscheme rose-pine` | Rose Pine (warm, muted) |
| `:colorscheme kanagawa` | Kanagawa (Japanese ink) |
| `:colorscheme gruvbox-material` | Gruvbox Material (earthy) |
| `:colorscheme nightfox` | Nightfox (cool, polished) |
| `:colorscheme dracula` | Dracula (classic dark purple) |
| `:colorscheme onedark` | One Dark Pro (VS Code style) |
| `:colorscheme nord` | Nord (icy blue, minimal) |
| `:colorscheme ayu-dark` | Ayu (warm amber) |
| `:colorscheme moonfly` | Moonfly (dark, blue-tinted) |
| `:colorscheme solarized-osaka` | Solarized Osaka (modern solarized) |

---

Present the above reference clearly. If the user asks a specific question (e.g. "how do I format?", "what opens the terminal?"), answer it directly using this reference.
