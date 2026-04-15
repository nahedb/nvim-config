local M = {}

function M.get(p)
  return {
    BufferlineFill               = { bg = p.bg },
    BufferlineBackground         = { fg = p.fg_dim,     bg = p.bg1 },
    BufferlineBufferSelected     = { fg = p.astrophage, bg = p.bg2, bold = true },
    BufferlineBufferVisible      = { fg = p.fg_dim,     bg = p.bg1 },
    BufferlineIndicatorSelected  = { fg = p.astrophage, bg = p.bg2 },
    BufferlineSeparator          = { fg = p.bg,         bg = p.bg1 },
    BufferlineSeparatorSelected  = { fg = p.bg,         bg = p.bg2 },
    BufferlineTab                = { fg = p.fg_dim,     bg = p.bg },
    BufferlineTabSelected        = { fg = p.astrophage, bg = p.bg2, bold = true },
    BufferlineTabClose           = { fg = p.error,      bg = p.bg },
    BufferlineDiagnostic         = { bg = p.bg1 },
    BufferlineDiagnosticSelected = { bg = p.bg2 },
    BufferlineError              = { fg = p.error,      bg = p.bg1 },
    BufferlineErrorSelected      = { fg = p.error,      bg = p.bg2, bold = true },
    BufferlineWarning            = { fg = p.warning,    bg = p.bg1 },
    BufferlineWarningSelected    = { fg = p.warning,    bg = p.bg2, bold = true },
  }
end

return M
