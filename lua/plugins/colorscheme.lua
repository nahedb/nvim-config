return {
  -- Catppuccin — :colorscheme catppuccin-mocha / catppuccin-macchiato / catppuccin-frappe / catppuccin-latte
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      flavour = "mocha",
      integrations = {
        neo_tree = true,
        gitsigns = true,
        telescope = { enabled = true },
        treesitter = true,
        which_key = true,
        blink_cmp = true,
        mason = true,
        indent_blankline = { enabled = true },
        trouble = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      -- catppuccin available via :colorscheme catppuccin-*
    end,
  },

  -- ── Lazy-loaded extras (available via :colorscheme <name>) ──────────────
  -- lazy = true prevents auto-load/setup at startup, which stops themes that
  -- call vim.cmd.colorscheme() in their setup() from stomping hail-mary.

  -- Everforest — :colorscheme everforest
  { "sainnhe/everforest", lazy = true },

  -- Tokyo Night — :colorscheme tokyonight / tokyonight-night / tokyonight-storm / tokyonight-moon
  { "folke/tokyonight.nvim", lazy = true },

  -- Rose Pine — :colorscheme rose-pine / rose-pine-moon / rose-pine-dawn
  { "rose-pine/neovim", name = "rose-pine", lazy = true },

  -- Kanagawa — :colorscheme kanagawa / kanagawa-wave / kanagawa-dragon / kanagawa-lotus
  { "rebelot/kanagawa.nvim", lazy = true },

  -- Gruvbox Material — :colorscheme gruvbox-material
  { "sainnhe/gruvbox-material", lazy = true },

  -- Nightfox family — :colorscheme nightfox / dayfox / dawnfox / duskfox / nordfox / terafox / carbonfox
  { "EdenEast/nightfox.nvim", lazy = true },

  -- Dracula — :colorscheme dracula
  { "Mofiqul/dracula.nvim", lazy = true },

  -- One Dark Pro — :colorscheme onedark / onelight / onedark_vivid / onedark_dark
  { "olimorris/onedarkpro.nvim", lazy = true },

  -- Nord — :colorscheme nord
  { "shaunsingh/nord.nvim", lazy = true },

  -- Ayu — :colorscheme ayu-dark / ayu-mirage / ayu-light
  { "Shatur/neovim-ayu", lazy = true },

  -- Material — :colorscheme material
  { "marko-cerovac/material.nvim", lazy = true },

  -- Moonfly — :colorscheme moonfly
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = true },

  -- Nightfly — :colorscheme nightfly
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = true },

  -- Solarized Osaka — :colorscheme solarized-osaka / solarized-osaka-night / solarized-osaka-storm
  { "craftzdog/solarized-osaka.nvim", lazy = true },
}
