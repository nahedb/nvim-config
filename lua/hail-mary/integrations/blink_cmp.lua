local M = {}

function M.get(p)
  return {
    BlinkCmpMenu          = { fg = p.fg,         bg = p.bg2 },
    BlinkCmpMenuBorder    = { fg = p.border,     bg = p.bg2 },
    BlinkCmpMenuSelection = { fg = p.bg,         bg = p.rocky },
    BlinkCmpLabel         = { fg = p.fg },
    BlinkCmpLabelMatch    = { fg = p.astrophage, bold = true },
    BlinkCmpKind          = { fg = p.teal },
    BlinkCmpKindFunction  = { fg = p.rocky },
    BlinkCmpKindMethod    = { fg = p.rocky },
    BlinkCmpKindClass     = { fg = p.stellar },
    BlinkCmpKindInterface = { fg = p.stellar },
    BlinkCmpKindKeyword   = { fg = p.astrophage },
    BlinkCmpKindVariable  = { fg = p.variable },
    BlinkCmpKindText      = { fg = p.earth },
    BlinkCmpKindSnippet   = { fg = p.starlight },
  }
end

return M
