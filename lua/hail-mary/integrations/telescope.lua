local M = {}

function M.get(p)
  return {
    TelescopeNormal         = { fg = p.fg,         bg = p.bg1 },
    TelescopeBorder         = { fg = p.border,      bg = p.bg1 },
    TelescopePromptNormal   = { fg = p.fg,         bg = p.bg2 },
    TelescopePromptBorder   = { fg = p.rocky,      bg = p.bg2 },
    TelescopePromptTitle    = { fg = p.bg,         bg = p.rocky,      bold = true },
    TelescopePreviewTitle   = { fg = p.bg,         bg = p.astrophage, bold = true },
    TelescopeResultsTitle   = { fg = p.bg,         bg = p.nebula,     bold = true },
    TelescopeSelection      = { bg = p.selection },
    TelescopeSelectionCaret = { fg = p.astrophage },
    TelescopeMatching       = { fg = p.astrophage, bold = true },
  }
end

return M
