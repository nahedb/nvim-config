local M = {}

function M.get(p)
  return {
    NeoTreeNormal        = { fg = p.fg,         bg = p.bg1 },
    NeoTreeNormalNC      = { fg = p.fg_dim,     bg = p.bg1 },
    NeoTreeEndOfBuffer   = { fg = p.bg1,        bg = p.bg1 },
    NeoTreeRootName      = { fg = p.astrophage, bold = true },
    NeoTreeFileName      = { fg = p.fg },
    NeoTreeDirectoryName = { fg = p.rocky },
    NeoTreeDirectoryIcon = { fg = p.rocky },
    NeoTreeGitAdded      = { fg = p.git_add },
    NeoTreeGitModified   = { fg = p.git_chg },
    NeoTreeGitDeleted    = { fg = p.git_del },
  }
end

return M
