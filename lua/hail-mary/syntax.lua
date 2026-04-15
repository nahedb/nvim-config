local M = {}

function M.get(p)
  return {
    Comment        = { fg = p.comment,    italic = true },
    Constant       = { fg = p.starlight },
    String         = { fg = p.earth },
    Character      = { fg = p.earth },
    Number         = { fg = p.starlight },
    Boolean        = { fg = p.astrophage },
    Float          = { fg = p.starlight },
    Identifier     = { fg = p.fg },
    Function       = { fg = p.rocky },
    Statement      = { fg = p.astrophage, bold = true },
    Conditional    = { fg = p.astrophage },
    Repeat         = { fg = p.astrophage },
    Label          = { fg = p.astrophage },
    Operator       = { fg = p.fg_dim },
    Keyword        = { fg = p.astrophage, bold = true },
    Exception      = { fg = p.grace },
    PreProc        = { fg = p.nebula },
    Include        = { fg = p.nebula },
    Define         = { fg = p.nebula },
    Macro          = { fg = p.nebula },
    PreCondit      = { fg = p.nebula },
    Type           = { fg = p.stellar },
    StorageClass   = { fg = p.astrophage },
    Structure      = { fg = p.stellar },
    Typedef        = { fg = p.stellar },
    Special        = { fg = p.teal },
    SpecialChar    = { fg = p.teal },
    Tag            = { fg = p.rocky },
    Delimiter      = { fg = p.fg_dim },
    SpecialComment = { fg = p.teal,  italic = true },
    Debug          = { fg = p.warning },
    Underlined     = { underline = true },
    Ignore         = { fg = p.comment },
    Error          = { fg = p.error,    bold = true },
    Todo           = { fg = p.bg,       bg = p.astrophage, bold = true },
  }
end

return M
