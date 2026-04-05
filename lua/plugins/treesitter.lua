return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require("nvim-treesitter").setup()

      require("nvim-treesitter").install({
        "lua", "vim", "vimdoc",
        "javascript", "typescript", "tsx", "html", "css", "json",
        "c_sharp", "yaml", "toml", "markdown", "markdown_inline",
        "bash", "regex", "gitignore",
        "terraform",
      })

      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local lang = vim.treesitter.language.get_lang(args.match) or args.match
          local ok = pcall(vim.treesitter.language.inspect, lang)
          if ok then
            vim.treesitter.start()
            vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
            vim.wo.foldmethod = "expr"
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })
    end,
  },
}
