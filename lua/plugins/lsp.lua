return {
  -- Mason: installs LSP servers, formatters, linters
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    opts = {
      ui = { icons = { package_installed = "✓", package_pending = "➜", package_uninstalled = "✗" } },
    },
  },

  -- Bridge between mason and lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "lua_ls",       -- Lua
        "ts_ls",        -- TypeScript / JavaScript
        "html",         -- HTML
        "cssls",        -- CSS
        "jsonls",       -- JSON
        "omnisharp",    -- C# / .NET
        "yamlls",       -- YAML
        "marksman",     -- Markdown
        "terraformls",  -- Terraform
        "graphql",      -- GraphQL
      },
      automatic_installation = true,
    },
  },

  -- LSP configuration (Neovim 0.11+ vim.lsp.config API)
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "saghen/blink.cmp",
    },
    config = function()
      -- Keymaps set on attach via autocommand
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "LSP: " .. desc })
          end
          map("gd", vim.lsp.buf.definition, "Go to definition")
          map("gD", vim.lsp.buf.declaration, "Go to declaration")
          map("gr", "<cmd>Telescope lsp_references<CR>", "Go to references")
          map("gi", "<cmd>Telescope lsp_implementations<CR>", "Go to implementation")
          map("gt", vim.lsp.buf.type_definition, "Go to type definition")
          map("K", vim.lsp.buf.hover, "Hover docs")
          map("<leader>rn", vim.lsp.buf.rename, "Rename")
          map("<leader>ca", vim.lsp.buf.code_action, "Code action")
          map("<leader>f", function() vim.lsp.buf.format({ async = true }) end, "Format file")
          map("[d", vim.diagnostic.goto_prev, "Prev diagnostic")
          map("]d", vim.diagnostic.goto_next, "Next diagnostic")
          map("<leader>d", vim.diagnostic.open_float, "Show diagnostics")
        end,
      })

      -- Apply capabilities to all servers globally
      vim.lsp.config("*", {
        capabilities = require("blink.cmp").get_lsp_capabilities(),
      })

      -- Server-specific overrides
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
      })

      vim.lsp.config("omnisharp", {
        cmd = { "omnisharp" },
        settings = {
          FormattingOptions = { EnableEditorConfigSupport = true },
          RoslynExtensionsOptions = { EnableAnalyzersSupport = true },
        },
      })

      -- Enable all servers (nvim-lspconfig provides their cmd/filetypes)
      vim.lsp.enable({
        "lua_ls", "ts_ls", "html", "cssls", "jsonls",
        "omnisharp", "yamlls", "marksman", "terraformls", "graphql",
      })

      -- Diagnostic signs
      local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })
    end,
  },
}
