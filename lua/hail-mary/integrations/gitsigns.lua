local M = {}

function M.get(p)
  return {
    GitSignsAdd    = { fg = p.git_add },
    GitSignsChange = { fg = p.git_chg },
    GitSignsDelete = { fg = p.git_del },
  }
end

return M
