local M = {}

function M.get(p)
  return {
    -- ── Base ───────────────────────────────────────────────────────────────
    Normal       = { fg = p.fg,         bg = p.bg },
    NormalFloat  = { fg = p.fg,         bg = p.bg1 },
    FloatBorder  = { fg = p.border,     bg = p.bg1 },
    NormalNC     = { fg = p.fg_dim,     bg = p.bg },
    Cursor       = { fg = p.bg,         bg = p.astrophage },
    CursorLine   = { bg = p.cursor_line },
    CursorLineNr = { fg = p.astrophage, bold = true },
    LineNr       = { fg = p.comment },
    SignColumn   = { fg = p.comment,    bg = p.bg },
    ColorColumn  = { bg = p.bg1 },
    VertSplit    = { fg = p.border,     bg = p.bg },
    WinSeparator = { fg = p.border,     bg = p.bg },

    -- ── Status / tabs ──────────────────────────────────────────────────────
    StatusLine   = { fg = p.fg,         bg = p.bg2 },
    StatusLineNC = { fg = p.fg_dim,     bg = p.bg1 },
    TabLine      = { fg = p.fg_dim,     bg = p.bg1 },
    TabLineFill  = { fg = p.fg_dim,     bg = p.bg },
    TabLineSel   = { fg = p.astrophage, bg = p.bg2,  bold = true },

    -- ── Popup menu ─────────────────────────────────────────────────────────
    Pmenu      = { fg = p.fg,    bg = p.bg2 },
    PmenuSel   = { fg = p.bg,    bg = p.rocky },
    PmenuSbar  = { bg = p.bg3 },
    PmenuThumb = { bg = p.border },

    -- ── Search / selection ─────────────────────────────────────────────────
    Search    = { fg = p.bg, bg = p.astrophage },
    IncSearch = { fg = p.bg, bg = p.starlight },
    CurSearch = { fg = p.bg, bg = p.starlight },
    Visual    = { bg = p.visual },
    VisualNOS = { bg = p.visual },

    -- ── Misc chrome ────────────────────────────────────────────────────────
    MatchParen  = { fg = p.astrophage, bold = true, underline = true },
    Folded      = { fg = p.fg_dim,     bg = p.bg2 },
    FoldColumn  = { fg = p.comment,    bg = p.bg },
    EndOfBuffer = { fg = p.bg },
    NonText     = { fg = p.border },
    SpecialKey  = { fg = p.border },
    Whitespace  = { fg = p.border },
    Directory   = { fg = p.rocky },
    Title       = { fg = p.astrophage, bold = true },
    Question    = { fg = p.earth },
    MoreMsg     = { fg = p.earth },
    ModeMsg     = { fg = p.astrophage },
    ErrorMsg    = { fg = p.error },
    WarningMsg  = { fg = p.warning },

    -- ── Diagnostics ────────────────────────────────────────────────────────
    DiagnosticError            = { fg = p.error },
    DiagnosticWarn             = { fg = p.warning },
    DiagnosticInfo             = { fg = p.info },
    DiagnosticHint             = { fg = p.hint },
    DiagnosticVirtualTextError = { fg = p.error,   bg = p.bg1, italic = true },
    DiagnosticVirtualTextWarn  = { fg = p.warning, bg = p.bg1, italic = true },
    DiagnosticVirtualTextInfo  = { fg = p.info,    bg = p.bg1, italic = true },
    DiagnosticVirtualTextHint  = { fg = p.hint,    bg = p.bg1, italic = true },
    DiagnosticUnderlineError   = { sp = p.error,   undercurl = true },
    DiagnosticUnderlineWarn    = { sp = p.warning, undercurl = true },
    DiagnosticUnderlineInfo    = { sp = p.info,    undercurl = true },
    DiagnosticUnderlineHint    = { sp = p.hint,    undercurl = true },
    DiagnosticSignError        = { fg = p.error },
    DiagnosticSignWarn         = { fg = p.warning },
    DiagnosticSignInfo         = { fg = p.info },
    DiagnosticSignHint         = { fg = p.hint },
  }
end

return M
