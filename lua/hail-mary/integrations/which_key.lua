local M = {}

function M.get(p)
  return {
    WhichKey       = { fg = p.astrophage },
    WhichKeyGroup  = { fg = p.rocky },
    WhichKeyDesc   = { fg = p.fg },
    WhichKeyBorder = { fg = p.border },
    WhichKeyFloat  = { bg = p.bg1 },
  }
end

return M
