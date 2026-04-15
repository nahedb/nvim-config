return {
  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- hail-mary palette (exposed via vim.g after colorscheme loads)
      local p = vim.g.hail_mary_palette or {}
      local bg       = p.bg        or "#0d0f18"
      local bg1      = p.bg1       or "#131520"
      local bg2      = p.bg2       or "#1a1d2e"
      local fg       = p.fg        or "#cdd6f4"
      local fg_dim   = p.fg_dim    or "#7c85b0"
      local amber    = p.astrophage or "#f7b731"
      local cyan     = p.rocky     or "#4fc3f7"
      local purple   = p.nebula    or "#ce93d8"
      local green    = p.earth     or "#a5d6a7"
      local red      = p.error     or "#f38ba8"

      local theme = {
        normal   = { a = { fg = bg, bg = amber,  gui = "bold" }, b = { fg = fg,     bg = bg2 }, c = { fg = fg_dim, bg = bg1 } },
        insert   = { a = { fg = bg, bg = cyan,   gui = "bold" }, b = { fg = fg,     bg = bg2 }, c = { fg = fg_dim, bg = bg1 } },
        visual   = { a = { fg = bg, bg = purple, gui = "bold" }, b = { fg = fg,     bg = bg2 }, c = { fg = fg_dim, bg = bg1 } },
        replace  = { a = { fg = bg, bg = red,    gui = "bold" }, b = { fg = fg,     bg = bg2 }, c = { fg = fg_dim, bg = bg1 } },
        command  = { a = { fg = bg, bg = green,  gui = "bold" }, b = { fg = fg,     bg = bg2 }, c = { fg = fg_dim, bg = bg1 } },
        inactive = { a = { fg = fg_dim, bg = bg1 },              b = { fg = fg_dim, bg = bg  }, c = { fg = fg_dim, bg = bg  } },
      }

      require("lualine").setup({
        options = {
          theme = theme,
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          globalstatus = true,
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { { "filename", path = 1 } },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })
    end,
  },

  -- Buffer tabs
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",
        separator_style = "slant",
        show_buffer_close_icons = true,
        show_close_icon = false,
        color_icons = true,
      },
    },
  },

  -- File explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      close_if_last_window = true,
      window = { width = 30 },
      default_component_configs = {
        diagnostics = {
          symbols = {
            error = "✘",
            warn  = "▲",
            info  = "ℹ",
            hint  = "⚡",
          },
        },
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = { enabled = true },
      },
    },
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      indent = { char = "│" },
      scope = { enabled = true },
    },
  },

  -- Which-key: shows keybinding hints
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      spec = {
        { "<leader>f", group = "Find/Telescope" },
        { "<leader>g", group = "Git" },
        { "<leader>h", group = "Hunk" },
        { "<leader>b", group = "Buffer" },
        { "<leader>l", group = "LSP" },
        { "<leader>n", group = "No..." },
        { "<leader>x", group = "Trouble/Diagnostics" },
        { "<leader>t", group = "Terminal" },
        { "<leader>s", group = "Search/Replace" },
      },
    },
  },

  -- Notifications
  {
    "rcarriga/nvim-notify",
    opts = { timeout = 3000, max_width = 80 },
    config = function(_, opts)
      require("notify").setup(opts)
      vim.notify = require("notify")
    end,
  },

  -- Better UI for inputs/selects
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {},
  },

  -- Trouble: pretty diagnostics list
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>",              desc = "Workspace diagnostics" },
      { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer diagnostics" },
      { "<leader>xq", "<cmd>Trouble qflist toggle<CR>",                   desc = "Quickfix list" },
      { "<leader>xl", "<cmd>Trouble loclist toggle<CR>",                  desc = "Location list" },
    },
  },

  -- Dashboard
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      theme = "doom",
      config = {
        header = {
          "",
          "   ·   *   ·   ✦   ·   *   ·   ✦   ·   *   ·   ✦   ·   *   ·   ",
          "                       P  R  O  J  E  C  T                       ",
          "",
          "  ██╗  ██╗ █████╗ ██╗██╗      ███╗   ███╗ █████╗ ██████╗ ██╗   ██╗",
          "  ██║  ██║██╔══██╗██║██║      ████╗ ████║██╔══██╗██╔══██╗╚██╗ ██╔╝",
          "  ███████║███████║██║██║      ██╔████╔██║███████║██████╔╝ ╚████╔╝ ",
          "  ██╔══██║██╔══██║██║██║      ██║╚██╔╝██║██╔══██║██╔══██╗  ╚██╔╝  ",
          "  ██║  ██║██║  ██║██║███████╗ ██║ ╚═╝ ██║██║  ██║██║  ██║   ██║   ",
          "  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚══════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝  ",
          "",
          "   ·   *   ·   ✦   ·   *   ·   ✦   ·   *   ·   ✦   ·   *   ·   ",
          "",
        },
        center = {
          { icon = "  ", key = "f", desc = "Find file",     action = "Telescope find_files" },
          { icon = "  ", key = "r", desc = "Recent files",  action = "Telescope oldfiles" },
          { icon = "  ", key = "g", desc = "Live grep",     action = "Telescope live_grep" },
          { icon = "  ", key = "e", desc = "File explorer", action = "Neotree toggle" },
          { icon = "  ", key = "q", desc = "Quit",          action = "qa" },
        },
        footer = {
          "",
          "  ★  Rocky say: \"It's time go.\"  ★",
          "",
        },
      },
    },
  },
}
