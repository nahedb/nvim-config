local M = {}

function M.get(p)
  local groups = {}
  local levels = {
    ERROR = p.error,
    WARN  = p.warning,
    INFO  = p.info,
    DEBUG = p.comment,
    TRACE = p.nebula,
  }
  for level, color in pairs(levels) do
    groups["Notify" .. level .. "Border"] = { fg = color }
    groups["Notify" .. level .. "Icon"]   = { fg = color }
    groups["Notify" .. level .. "Title"]  = { fg = color, bold = true }
    groups["Notify" .. level .. "Body"]   = { link = "Normal" }
  end
  return groups
end

return M
