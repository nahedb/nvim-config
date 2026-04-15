local M = {}

function M.get(p)
  return {
    DashboardHeader   = { fg = p.rocky },
    DashboardFooter   = { fg = p.astrophage_dim, italic = true },
    DashboardIcon     = { fg = p.astrophage },
    DashboardKey      = { fg = p.astrophage,     bold = true },
    DashboardDesc     = { fg = p.fg_dim },
    DashboardShortCut = { fg = p.teal },
  }
end

return M
