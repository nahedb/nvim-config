local M = {}

function M.get(p)
  return {
    ["@comment"]               = { link = "Comment" },

    -- ── Keywords ───────────────────────────────────────────────────────────
    ["@keyword"]               = { link = "Keyword" },           -- amber: const/let/var + fallback
    ["@keyword.conditional"]   = { fg = p.astrophage },          -- amber: if/else/switch/case
    ["@keyword.repeat"]        = { fg = p.astrophage },          -- amber: for/while/do
    ["@keyword.function"]      = { fg = p.nebula, bold = true }, -- purple: function/async
    ["@keyword.coroutine"]     = { fg = p.nebula },              -- purple: await
    ["@keyword.return"]        = { fg = p.grace, bold = true },  -- coral: return
    ["@keyword.exception"]     = { fg = p.grace },               -- coral: throw/try/catch
    ["@keyword.operator"]      = { fg = p.astrophage },          -- amber: new/typeof/instanceof/in
    ["@keyword.import"]        = { fg = p.nebula },              -- purple: import/export/from
    ["@keyword.modifier"]      = { fg = p.astrophage },           -- amber: public/private/static/readonly
    ["@keyword.type"]          = { fg = p.nebula },              -- purple: type/interface/class/enum declaration

    -- ── Functions ──────────────────────────────────────────────────────────
    ["@function"]              = { link = "Function" },
    ["@function.builtin"]      = { fg = p.rocky, italic = true },
    ["@function.method"]       = { fg = p.rocky },
    ["@function.method.call"]  = { fg = p.rocky },

    -- ── Variables ──────────────────────────────────────────────────────────
    ["@variable"]              = { fg = p.variable },
    ["@variable.builtin"]      = { fg = p.starlight, italic = true },
    ["@variable.parameter"]    = { fg = p.teal },      -- teal: parameters contrast periwinkle vars
    ["@variable.member"]       = { fg = p.variable },

    -- ── Literals ───────────────────────────────────────────────────────────
    ["@string"]                = { link = "String" },
    ["@string.escape"]         = { fg = p.teal },
    ["@number"]                = { link = "Number" },
    ["@float"]                 = { link = "Float" },
    ["@boolean"]               = { link = "Boolean" },

    -- ── Types ──────────────────────────────────────────────────────────────
    ["@constant"]              = { fg = p.starlight },
    ["@constant.builtin"]      = { fg = p.starlight, bold = true },
    ["@type"]                  = { fg = p.stellar },
    ["@type.builtin"]          = { fg = p.astrophage, italic = true },
    ["@namespace"]             = { fg = p.nebula },
    ["@module"]                = { fg = p.nebula },

    -- ── Properties / attributes ────────────────────────────────────────────
    ["@property"]              = { fg = p.variable },
    ["@attribute"]             = { fg = p.nebula, italic = true },
    ["@attribute.builtin"]     = { fg = p.nebula, italic = true },
    ["@constructor"]           = { fg = p.stellar },

    -- ── Documentation ──────────────────────────────────────────────────────
    ["@comment.documentation"] = { link = "Comment" },

    -- ── Punctuation ────────────────────────────────────────────────────────
    ["@punctuation"]           = { fg = p.fg_dim },
    ["@punctuation.bracket"]   = { fg = p.fg_dim },
    ["@punctuation.delimiter"] = { fg = p.fg_dim },

    -- ── Tags (HTML/JSX) ────────────────────────────────────────────────────
    ["@tag"]                   = { fg = p.rocky },
    ["@tag.attribute"]         = { fg = p.earth },
    ["@tag.delimiter"]         = { fg = p.fg_dim },

    -- ── Misc ───────────────────────────────────────────────────────────────
    ["@operator"]              = { fg = p.fg_dim },
  }
end

return M
