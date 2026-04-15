-- Project Hail Mary colorscheme for Neovim
-- Inspired by Andy Weir's "Project Hail Mary"
--   Astrophage:  amber/gold  — control flow keywords
--   Rocky:       cyan        — functions, methods
--   Grace:       coral/rose  — return, throw, yield
--   Earth:       soft green  — strings
--   Nebula:      purple      — types, import/export, decorators
--   Starlight:   warm orange — numbers, constants

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end
vim.o.background = "dark"
vim.g.colors_name = "hail-mary"

local p = require("hail-mary.palette")

local function apply(groups)
  for name, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, name, opts)
  end
end

apply(require("hail-mary.editor").get(p))
apply(require("hail-mary.syntax").get(p))
apply(require("hail-mary.treesitter").get(p))
apply(require("hail-mary.lsp").get(p))
apply(require("hail-mary.integrations.telescope").get(p))
apply(require("hail-mary.integrations.neo_tree").get(p))
apply(require("hail-mary.integrations.dashboard").get(p))
apply(require("hail-mary.integrations.which_key").get(p))
apply(require("hail-mary.integrations.bufferline").get(p))
apply(require("hail-mary.integrations.blink_cmp").get(p))
apply(require("hail-mary.integrations.notify").get(p))
apply(require("hail-mary.integrations.indent_blankline").get(p))
apply(require("hail-mary.integrations.gitsigns").get(p))

-- Expose palette for other modules (lualine, etc.)
vim.g.hail_mary_palette = p
