return {
  -- Catppuccin (mocha=dark, macchiato=darker, frappe=medium, latte=light) — active default
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1001,
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

  -- Project Hail Mary (custom) — deep space + Astrophage amber + Rocky cyan
  {
    name = "hail-mary",
    dir = vim.fn.stdpath("config"),  -- not a plugin; just triggers colorscheme load
    priority = 1002,
    config = function()
      vim.cmd.colorscheme("hail-mary")
    end,
  },

  -- Everforest (green, easy on eyes) — :colorscheme everforest
  {
    "sainnhe/everforest",
    priority = 1000,
    opts = {
      everforest_background = "hard",
      everforest_better_performance = 1,
    },
  },

  -- Tokyo Night (dark, vibrant purple/blue) — :colorscheme tokyonight / tokyonight-night / tokyonight-storm / tokyonight-day / tokyonight-moon
  { "folke/tokyonight.nvim", priority = 1000, opts = {} },

  -- Rose Pine (warm, muted) — :colorscheme rose-pine / rose-pine-moon / rose-pine-dawn
  { "rose-pine/neovim", name = "rose-pine", priority = 1000, opts = {} },

  -- Kanagawa (dark, Japanese ink painting) — :colorscheme kanagawa / kanagawa-wave / kanagawa-dragon / kanagawa-lotus
  { "rebelot/kanagawa.nvim", priority = 1000, opts = {} },

  -- Gruvbox Material (warm, earthy tones) — :colorscheme gruvbox-material
  { "sainnhe/gruvbox-material", priority = 1000 },

  -- Nightfox family (cool, polished) — :colorscheme nightfox / dayfox / dawnfox / duskfox / nordfox / terafox / carbonfox
  { "EdenEast/nightfox.nvim", priority = 1000, opts = {} },

  -- Dracula (classic dark purple) — :colorscheme dracula
  { "Mofiqul/dracula.nvim", priority = 1000 },

  -- One Dark Pro (VS Code One Dark) — :colorscheme onedarkpro / onedark / onelight / onedark_vivid / onedark_dark
  { "olimorris/onedarkpro.nvim", priority = 1000, opts = {} },

  -- Nord (icy blue, minimal) — :colorscheme nord
  { "shaunsingh/nord.nvim", priority = 1000 },


  -- Ayu (clean, warm amber) — :colorscheme ayu-dark / ayu-mirage / ayu-light
  { "Shatur/neovim-ayu", priority = 1000 },

  -- Material (Google Material) — :colorscheme material (set style in opts)
  {
    "marko-cerovac/material.nvim",
    priority = 1000,
    opts = { style = "oceanic" }, -- oceanic / deep ocean / palenight / lighter / darker
  },

  -- Moonfly (dark, blue-tinted) — :colorscheme moonfly
  { "bluz71/vim-moonfly-colors", name = "moonfly", priority = 1000 },

  -- Nightfly (deep blue) — :colorscheme nightfly
  { "bluz71/vim-nightfly-colors", name = "nightfly", priority = 1000 },

  -- Solarized Osaka (modern solarized) — :colorscheme solarized-osaka / solarized-osaka-night / solarized-osaka-storm / solarized-osaka-day
  { "craftzdog/solarized-osaka.nvim", priority = 1000, opts = {} },
}
