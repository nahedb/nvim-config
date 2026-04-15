local M = {}

function M.get(p)
  return {
    IblIndent = { fg = p.bg3 },
    IblScope  = { fg = p.border },
  }
end

return M
