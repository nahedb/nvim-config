# Neovim Cheatsheet

> **Leader key = `Space`**
> Press `<Space>` and wait — which-key will show available bindings.

---

## File Explorer (Neo-tree)

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle file explorer open/close |
| `<leader>o` | Focus file explorer (from any buffer) |
| `<Ctrl-h/j/k/l>` | Move focus **out** of explorer into editor (or between any windows) |
| `<Enter>` | Open file under cursor |
| `a` | Create new file (type name, include `/` at end for directory) |
| `d` | Delete file/folder |
| `r` | Rename file |
| `y` | Copy file |
| `x` | Cut file |
| `p` | Paste file |
| `R` | Refresh tree |
| `H` | Toggle hidden/dotfiles |
| `q` | Close explorer |

---

## Buffers (open files / tabs)

Buffers are open files. The tab bar at the top shows all open buffers.

| Key | Action |
|-----|--------|
| `<Shift-h>` | Previous buffer (left) |
| `<Shift-l>` | Next buffer (right) |
| `<leader>bd` | Close/delete current buffer |
| `<leader>fb` | Fuzzy search open buffers |

---

## Windows / Splits

| Key | Action |
|-----|--------|
| `<Ctrl-h>` | Move to left window |
| `<Ctrl-j>` | Move to lower window |
| `<Ctrl-k>` | Move to upper window |
| `<Ctrl-l>` | Move to right window |
| `:vs` | Split vertically |
| `:sp` | Split horizontally |
| `<Ctrl-Up/Down>` | Resize window height |
| `<Ctrl-Left/Right>` | Resize window width |

---

## File Finding (Telescope)

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files by name |
| `<leader>fg` | Live grep (search file contents) |
| `<leader>fr` | Recent files |
| `<leader>fb` | Open buffers |
| `<leader>fw` | Search word under cursor |
| `<leader>fh` | Help docs |
| `<leader>ft` | Find TODO/FIXME comments |

**Inside Telescope:**

| Key | Action |
|-----|--------|
| `<Ctrl-j/k>` | Move up/down in results |
| `<Enter>` | Open selected |
| `<Ctrl-q>` | Send results to quickfix list |
| `<Esc>` | Close |

---

## LSP (Code Intelligence)

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Find all references |
| `gi` | Go to implementation |
| `gt` | Go to type definition |
| `K` | Hover docs / signature |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions (quick fixes, imports) |
| `<leader>f` | Format file (LSP) |
| `<leader>F` | Format file (conform) |
| `[d` | Previous diagnostic/error |
| `]d` | Next diagnostic/error |
| `<leader>d` | Show diagnostic detail popup |

---

## Completion (nvim-cmp)

Triggers automatically when typing. While the popup is open:

| Key | Action |
|-----|--------|
| `<Ctrl-j>` | Select next item |
| `<Ctrl-k>` | Select previous item |
| `<Tab>` | Select next / jump snippet placeholder |
| `<Shift-Tab>` | Select previous / jump back |
| `<CR>` (Enter) | Confirm selection |
| `<Ctrl-Space>` | Manually trigger completion |
| `<Ctrl-e>` | Abort/close completion |
| `<Ctrl-b/f>` | Scroll docs up/down |

---

## Git

| Key | Action |
|-----|--------|
| `<leader>gg` | Open LazyGit (full TUI) |
| `<leader>gs` | Git status in Telescope |
| `]h` | Next changed hunk |
| `[h` | Previous changed hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage entire buffer |
| `<leader>hu` | Undo staged hunk |
| `<leader>hR` | Reset entire buffer |
| `<leader>hp` | Preview hunk diff |
| `<leader>hb` | Blame current line |
| `<leader>hd` | Diff this file |

---

## Editing

### Comments
| Key | Action |
|-----|--------|
| `gcc` | Toggle line comment |
| `gc` + motion | Comment a motion (e.g. `gc5j`) |
| `gc` (visual) | Toggle comment on selection |

### Surround (nvim-surround)
| Key | Action |
|-----|--------|
| `ys` + motion + char | Add surround (e.g. `ysiw"` wraps word in quotes) |
| `cs` + old + new | Change surround (e.g. `cs"'` changes `"` to `'`) |
| `ds` + char | Delete surround (e.g. `ds"` removes quotes) |

### Flash (jump anywhere fast)
| Key | Action |
|-----|--------|
| `s` | Flash jump — type 2 chars, pick label |
| `S` | Flash treesitter — jump to any syntax node |

### Moving Lines
| Key | Action |
|-----|--------|
| `J` (visual) | Move selection down |
| `K` (visual) | Move selection up |

### Indenting
| Key | Action |
|-----|--------|
| `>` (visual) | Indent right (keeps selection) |
| `<` (visual) | Indent left (keeps selection) |

### Scrolling
| Key | Action |
|-----|--------|
| `<Ctrl-d>` | Scroll down half page (cursor stays centered) |
| `<Ctrl-u>` | Scroll up half page (cursor stays centered) |
| `n` / `N` | Next/prev search result (cursor stays centered) |

---

## Save & Quit

| Key | Action |
|-----|--------|
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `<leader>nh` | Clear search highlights |
| `:wa` | Save all |
| `:qa` | Quit all |

---

## Plugin Management (Lazy)

| Command | Action |
|---------|--------|
| `:Lazy` | Open plugin manager UI |
| `:Lazy sync` | Install + update all plugins |
| `:Lazy update` | Update plugins |
| `:Lazy clean` | Remove unused plugins |

---

## Themes

Run `:Lazy sync` after adding new themes to install them.

To **preview** a theme temporarily: `:colorscheme <name>`
To **make it permanent**: edit `colorscheme.lua` — change `vim.cmd.colorscheme("name")`
To **change catppuccin flavour**: change `flavour = "mocha"` in colorscheme.lua opts

### Installed Themes

| Colorscheme command | Description |
|---------------------|-------------|
| `catppuccin` | Dark, pastel |
| `catppuccin-mocha` | Dark variant |
| `catppuccin-macchiato` | Slightly darker |
| `catppuccin-frappe` | Medium dark |
| `catppuccin-latte` | Light variant |
| `tokyonight` | Dark, vibrant purple/blue |
| `tokyonight-night` | Darkest Tokyo Night |
| `tokyonight-storm` | Softer dark blue |
| `tokyonight-moon` | Warm purple, very popular |
| `tokyonight-day` | Light variant |
| `rose-pine` | Warm, muted, earthy |
| `rose-pine-moon` | Darker rose pine |
| `rose-pine-dawn` | Light rose pine |
| `kanagawa` | Japanese ink, dark warm |
| `kanagawa-wave` | Default dark variant |
| `kanagawa-dragon` | Darker dragon variant |
| `kanagawa-lotus` | Light variant |
| `gruvbox-material` | Warm earthy retro |
| `nightfox` | Cool, polished dark |
| `dayfox` | Light variant |
| `dawnfox` | Warm light |
| `duskfox` | Warm dark purple |
| `nordfox` | Nordic dark |
| `terafox` | Dark green teal |
| `carbonfox` | Dark blue-grey, minimal |
| `dracula` | Classic dark purple |
| `onedark` | VS Code One Dark |
| `onelight` | VS Code One Light |
| `onedark_vivid` | Brighter One Dark |
| `onedark_dark` | Darker One Dark |
| `nord` | Icy blue, minimal |
| `everforest` | Muted green, easy on eyes — **current default** |
| `ayu-dark` | Clean warm amber dark |
| `ayu-mirage` | Softer dark amber |
| `ayu-light` | Light amber |
| `material` | Google Material (oceanic style) |
| `moonfly` | Dark blue-tinted |
| `nightfly` | Deep blue |
| `solarized-osaka` | Modern solarized dark |
| `solarized-osaka-night` | Night variant |
| `solarized-osaka-storm` | Storm variant |

---

## Mason (LSP / Formatter / Linter Management)

| Command | Action |
|---------|--------|
| `:Mason` | Open Mason UI |
| `:MasonUpdate` | Update Mason registry |

### Installed via Mason
`lua_ls` · `ts_ls` · `html` · `cssls` · `jsonls` · `omnisharp` · `yamlls` · `marksman`
`stylua` · `prettier` · `eslint_d`
