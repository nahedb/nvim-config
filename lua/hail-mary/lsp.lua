local M = {}

function M.get(p)
  return {
    -- ── Types ──────────────────────────────────────────────────────────────
    ["@lsp.type.class"]         = { fg = p.stellar },
    ["@lsp.type.type"]          = { fg = p.stellar },
    ["@lsp.type.typeParameter"] = { fg = p.stellar },
    ["@lsp.type.interface"]     = { fg = p.stellar },
    ["@lsp.type.struct"]        = { fg = p.stellar },
    ["@lsp.type.enum"]          = { fg = p.nebula },
    ["@lsp.type.enumMember"]    = { fg = p.starlight },
    ["@lsp.type.namespace"]     = { fg = p.nebula },

    -- ── Functions / methods ────────────────────────────────────────────────
    ["@lsp.type.function"]      = { link = "Function" },
    ["@lsp.type.method"]        = { fg = p.rocky },

    -- ── Variables / parameters / fields ───────────────────────────────────
    -- Note: typemod groups don't inherit from type groups in Neovim's LSP
    -- token system, so each combination must be set explicitly.
    ["@lsp.type.variable"]                           = { fg = p.variable },
    ["@lsp.type.parameter"]                          = { fg = p.teal },
    ["@lsp.type.property"]                           = { fg = p.variable },
    ["@lsp.type.field"]                              = { fg = p.variable },
    ["@lsp.typemod.variable.local"]                  = { fg = p.variable },
    ["@lsp.typemod.variable.declaration"]            = { fg = p.variable },
    ["@lsp.typemod.variable.readonly"]               = { fg = p.variable },
    ["@lsp.typemod.variable.defaultLibrary"]         = { fg = p.variable },
    ["@lsp.typemod.variable.readonly.defaultLibrary"] = { fg = p.starlight, italic = true },
    ["@lsp.typemod.parameter.declaration"]           = { fg = p.teal },
    ["@lsp.typemod.property.declaration"]            = { fg = p.variable },
    ["@lsp.typemod.field.static"]                    = { fg = p.variable },
    ["@lsp.typemod.field.readonly"]                  = { fg = p.variable },

    -- ── Decorators / attributes ────────────────────────────────────────────
    ["@lsp.type.decorator"]     = { fg = p.nebula, italic = true },

    -- ── C# / OmniSharp-specific tokens ────────────────────────────────────
    ["@lsp.type.event"]               = { fg = p.nebula },
    ["@lsp.type.label"]               = { fg = p.astrophage },
    ["@lsp.type.controlKeyword"]      = { fg = p.astrophage },
    ["@lsp.type.operatorOverloaded"]  = { fg = p.fg_dim },
    ["@lsp.type.preprocessorKeyword"] = { fg = p.nebula },

    -- ── C# XML doc comments ────────────────────────────────────────────────
    ["@lsp.type.xmlDocCommentText"]                  = { link = "Comment" },
    ["@lsp.type.xmlDocCommentDelimiter"]             = { fg = p.comment },
    ["@lsp.type.xmlDocCommentName"]                  = { fg = p.teal },
    ["@lsp.type.xmlDocCommentAttributeName"]         = { fg = p.astrophage_dim },
    ["@lsp.type.xmlDocCommentAttributeValue"]        = { fg = p.earth },
    ["@lsp.type.xmlDocCommentAttributeQuotes"]       = { fg = p.fg_dim },
    ["@lsp.type.xmlDocCommentComment"]               = { link = "Comment" },
    ["@lsp.type.xmlDocCommentCDataSection"]          = { fg = p.earth },
    ["@lsp.type.xmlDocCommentEntityReference"]       = { fg = p.teal },
    ["@lsp.type.xmlDocCommentProcessingInstruction"] = { fg = p.nebula },

    -- ── Primitives ─────────────────────────────────────────────────────────
    ["@lsp.type.string"]   = { link = "String" },
    ["@lsp.type.number"]   = { link = "Number" },
    ["@lsp.type.operator"] = { fg = p.fg_dim },

    -- ── Modifiers ──────────────────────────────────────────────────────────
    ["@lsp.mod.readonly"]   = { fg = p.variable },
    ["@lsp.mod.deprecated"] = { fg = p.comment, strikethrough = true },

    -- Note: @lsp.type.keyword is intentionally not defined.
    -- OmniSharp sends all C# keywords under one flat type, which would
    -- collapse return/async/using to amber and override treesitter.
    -- Leaving it undefined lets @keyword.* handle differentiation.
  }
end

return M
